using UnityEngine;
using UnityEditor;
using System.Collections;
using System.Collections.Generic;

// This script is placed on an empty game object, and will create a level based on
// the templates provided
public class GenerateLevel : MonoBehaviour
{
    [System.Serializable]
    public struct OpenEnd
    {
        public int x;
        public int z;
        public List<int> orientations; // 0 is up, 1 is right, 2 is down, 3 is left
        public OpenEnd(int x, int z) : this()
        {
            orientations = new List<int>();
            this.x = x;
            this.z = z;
        }
    }

    [System.Serializable]
    public struct Point
    {
        public int x;
        public int z;

        public Point(int x, int z) : this()
        {
            this.x = x;
            this.z = z;
        }
    }

    public GameObject thePlayer;

    [Range(2, 1000)] public int numSections; // How many sections should we spawn? 

    public float offset = 100; // This is how much each section is offset from each other.  

    public GameObject[] enemies;

    public GameObject[] templates; // Contains all our templates.  They'll get sorted below

    // The combined value of these percents should equate to 1.
    [Range(0, 1)]public double culdesacSpawnPerc = 0;
    [Range(0, 1)]public double straightSpawnPerc = 0;
    [Range(0, 1)]public double curveSpawnPerc = 0;
    [Range(0, 1)]public double threeWaySpawnPerc = 0;
    [Range(0, 1)]public double fourWaySpawnPerc = 0;

    //private int numCuldesacs = 0;
    //private int numStraights = 0;
    //private int numCurves = 0;
    //private int numThreeWays = 0;
    //private int numFourWays = 0;

    //private List<GameObject> templateCuldesacs;
    //private List<GameObject> templateCurves; 
    //private List<GameObject> templateStraightStreets; 
    //private List<GameObject> template3WayIntersections; 
    //private List<GameObject> template4WayIntersections; 

    private struct SectionType
    {
        public List<GameObject> theTemplates;
        public int numSections;
        public int sectionType;
    }

    private SectionType culdesacs;
    private SectionType curves;
    private SectionType straights;
    private SectionType threeWays;
    private SectionType fourWays;

    private struct Section
    {
        public GameObject section;
        public Point point;

        public Section(GameObject section, Point point) : this()
        {
            this.section = section;
            this.point = point;
        }
    }

    private List<List<Section>> sections; // Contains all the sections we've spawned
    private int sectionsSpawned = 0;
    private Section lastSpawned;

    public List<Point> openEnds; // Contains all coordinates for spaces with an open end.  For ease, the coordinate stored will be
    // located where the open end is and not the location of the section with the open end.

    // Use this for initialization
    void Start ()
    {
        culdesacs.theTemplates = new List<GameObject>();
        curves.theTemplates = new List<GameObject>();
        straights.theTemplates = new List<GameObject>();
        threeWays.theTemplates = new List<GameObject>();
        fourWays.theTemplates = new List<GameObject>();
        openEnds = new List<Point>();

        sections = new List<List<Section>>();

        culdesacs.sectionType = 1;
        curves.sectionType = 2;
        straights.sectionType = 3;
        threeWays.sectionType = 4;
        fourWays.sectionType = 5;

        // Sort the templates into their respective lists so we know where to place to them.
        foreach (GameObject g in templates)
        {
            GenerationAttributes script = g.GetComponent<GenerationAttributes>();

            if (script.numOpenings == 4)
            {
                fourWays.theTemplates.Add(g);
            }
            else if (script.numOpenings == 3)
            {
                threeWays.theTemplates.Add(g);
            }
            else if (script.numOpenings == 2)
            {
                if (script.upPosZ && script.leftNegX)
                {
                    curves.theTemplates.Add(g);
                }
                else if (script.upPosZ && script.downNegZ)
                {
                    straights.theTemplates.Add(g);
                }
                else
                {
                    print("Invalid orientation on either a straight street or curved template");
                }
            }
            else if (script.numOpenings == 1)
            {
                if (script.upPosZ)
                {
                    culdesacs.theTemplates.Add(g);
                }
                else
                {
                    print("Invalid orientation on either a straight street or curved template");
                }
            }
            else
            {
                print("Invalid value for numOpening.");
            }
        }

        // Figure out how many of each section type we're going to spawn.  It will be roughly total to numSections
        culdesacs.numSections = (int)(numSections * culdesacSpawnPerc);
        curves.numSections = (int)(numSections * curveSpawnPerc);
        straights.numSections = (int)(numSections * straightSpawnPerc);
        threeWays.numSections = (int)(numSections * threeWaySpawnPerc);
        fourWays.numSections = (int)(numSections * fourWaySpawnPerc);
        numSections = culdesacs.numSections + curves.numSections + straights.numSections + threeWays.numSections + fourWays.numSections;
        //sections = new Section[0];

        // Spawn Sections.
        BuildMap();

        // Bake the NavMesh based on the newly created sections.
        NavMeshBuilder.BuildNavMesh();

        // Spawn the Enemies, utilizing the new NavMesh for pathfinding.
        SpawnEnemies();
    }

    void BuildMap()
    {
        // Spawn the starting section.  It's always a culdesac.
        int r = Random.Range(0, culdesacs.theTemplates.Count);
        GameObject section = Instantiate(culdesacs.theTemplates[r], new Vector3(0 * offset, 0, 0 * offset), gameObject.transform.rotation, gameObject.transform) as GameObject;
        sections[0][0] = new Section(section, new Point(0, 0));
        openEnds.Add(new Point(0, 1));

        // Spawn the player in the starting section.
        GameObject playerSpawnPoint = section.transform.Find("Player").gameObject;
        GameObject tempPlayer = Instantiate(thePlayer, playerSpawnPoint.transform.position, playerSpawnPoint.transform.rotation, gameObject.transform) as GameObject;

        // Spawn the remaining sections 
        for (int i = 1; i < numSections; i++)
        {
            // A good distribution for say 10 sections would be to have 2 culdesacs, 
            // 1 3 or 4 way, and the rest are curves or straight streets.
            if (sectionsSpawned < numSections)
            {
                SpawnSection();
            }
            else // There's potential to spawn more than one section in SpawnSection, so if we go over our limit break
            {
                break;
            }
        }
    }

    void SpawnSection()
    {
        // Branch out wherever there's an open end.
        foreach (Point p in openEnds)
        {
            if (sectionsSpawned < numSections)
            {
                // First we need to decide which type of section to spawn
                bool canSpawnCuldesac = false;
                bool canSpawnStraight = false;
                bool canSpawnCurve = false;
                bool canSpawnThree = false;
                bool canSpawnFour = false;

                if (culdesacs.numSections > 0)
                {
                    canSpawnCuldesac = true;
                }
                if (curves.numSections > 0)
                {
                    canSpawnCurve = true;
                }
                if (straights.numSections > 0)
                {
                    canSpawnStraight = true;
                }
                if (threeWays.numSections > 0)
                {
                    canSpawnThree = true;
                }
                if (fourWays.numSections > 0)
                {
                    canSpawnFour = true;
                }

                if (!canSpawnCuldesac && !canSpawnCurve && !canSpawnFour && !canSpawnThree && !canSpawnStraight)
                {
                    return;
                }

                // Check surrounding spaces for other sections

                // These 4 will be either 0, 1, or 2. 
                // 0 indicates an empty space, no template.
                // 1 indicates an open space, containing a template we can connect to.
                // 2 indicates a closed space, we can't do anything here.
                int upPosZ = -1; 
                int rightPosX = -1; 
                int downNegZ = -1;
                int leftNegX = -1;

                // Test current open end in surrounding areas.  We need to catch null reference exceptions as the index of 
                // our check will be null if there isn't a template at that coordinate.
                upPosZ = checkPoint(p.x,p.z + 1, 0);
                rightPosX = checkPoint(p.x + 1, p.z, 1);
                downNegZ = checkPoint(p.x, p.z - 1, 2);
                leftNegX = checkPoint(p.x - 1, p.z, 3);

                if (upPosZ == 2 && rightPosX == 2 && downNegZ == 2 && leftNegX == 2)
                {
                    // Can't spawn anything.  This should never happen
                    print("Something went wrong.. We should have spawned a section");
                }

                 
                // Now we need to spawn the section

            }
        }
    }

    int checkPoint(int x, int z, int location)
    {
        // Not sure if this is returning correct value
        if (sections[x][z].Equals(null))
        {
            return 0;
        }
        else
        {
            GenerationAttributes script = sections[x][z].section.GetComponent<GenerationAttributes>();

            if (location == 0)
            {
                if (script.upPosZ)
                {
                    return 1;
                }
                else
                {
                    return 2;
                }
            }
            else if (location == 1)
            {
                if (script.rightPosX)
                {
                    return 1;
                }
                else
                {
                    return 2;
                }
            }
            else if (location == 2)
            {
                if (script.downNegZ)
                {
                    return 1;
                }
                else
                {
                    return 2;
                }
            }
            else if (location == 3)
            {
                if (script.leftNegX)
                {
                    return 1;
                }
                else
                {
                    return 2;
                }
            }
            else
            {
                print("Invalid location passed to checkPoint in GenerateLevel: " + location);
            }
        }
         
        return 0;
    }

    void SpawnEnemies()
    {           
        // This hasn't been tested yet.  The original implementation is commented out below, but now I use a nested list
        foreach(List<Section> s in sections)
        {
            foreach(Section v in s)
            {
                // Spawn all enemies, except for the starting sections enemies.
                GameObject section = v.section;

                // Spawn Enemies
                foreach (Transform child in section.GetComponentsInChildren<Transform>())
                {
                    if (child.gameObject.CompareTag("EnemySpawn"))
                    {
                        int r = Random.Range(0, enemies.Length);

                        GameObject tempEnemy = Instantiate(enemies[r], child.position, child.rotation, section.transform) as GameObject;
                    }
                }
            }
        }
           
        //// Spawn all enemies, except for the starting sections enemies.
        //for (int i = 1; i < sectionsSpawned; i++)
        //{
        //    GameObject section = sections[i];
        //    // Spawn Enemies
        //    foreach (Transform child in section.GetComponentsInChildren<Transform>())
        //    {
        //        if (child.gameObject.CompareTag("EnemySpawn"))
        //        {
        //            int r = Random.Range(0, enemies.Length);

        //            GameObject tempEnemy = Instantiate(enemies[r], child.position, child.rotation, section.transform) as GameObject;
        //        }
        //    }
        //}
    }
}
