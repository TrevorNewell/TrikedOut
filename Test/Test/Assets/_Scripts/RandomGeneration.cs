using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class RandomGeneration : MonoBehaviour
{
    public GameObject thePlayer;

    [Range (2, 1000)] public int numSections; // How many sections should we spawn? 
    public float offset = 100; // This is how much each section is offset from each other.  

    private bool isFirstSpawn; // If true, spawn player at the player spawnPoint

    public GameObject[] enemies;

    public GameObject[] templates;
    private List<GameObject> templateClosers; // All templates that effectively close a street (a culdesac for example)
    private List<GameObject> templateOpeners; // All templates that have a road running from one end of the template to the other
    public GameObject[] sections;

    private int sectionsSpawned = 0;
    private int openEnds = 0;
    private int currentX = 0;
    private int currentZ = 0;

    // Use this for initialization
    void Start ()
    {
	    isFirstSpawn = true;

        templateClosers = new List<GameObject>();
        templateOpeners = new List<GameObject>();

        // Sort out the templates based on the street they have in it.
        foreach (GameObject theTemplate in templates)
        {
            if (theTemplate.GetComponent<GenerationAttributes>().numOpenings > 1)
            {
                templateOpeners.Add(theTemplate);
            }
            else
            {
                templateClosers.Add(theTemplate);
            }
        }

        sections = new GameObject[numSections];
        Spawn();
	}

    // Begins the process of randomly generating a map.
    void Spawn()
    {
        int sectionsToSpawn = numSections;

        for (int i = 0; i < sectionsToSpawn; i++) 
        {
            GameObject section; // = new GameObject();

            // Look at previous section spawned and spawn a template connecting one of the roads.
            if (isFirstSpawn == false)
            {
                GameObject lastSection = sections[i - 1];

                // If there's only one section left to spawn, we need it to be a culdesac
                if (sectionsSpawned == numSections - 1)
                {
                    int r1 = Random.Range(0, templateClosers.Count);

                    section = Instantiate(templateClosers[r1], new Vector3(0, 0, 0), gameObject.transform.rotation, gameObject.transform) as GameObject;
                }
                // Otherwise, it can be any of the roads that open
                else
                {
                    int r2 = Random.Range(0, templateOpeners.Count);

                    section = Instantiate(templateOpeners[r2], new Vector3(0, 0, 0), gameObject.transform.rotation, gameObject.transform) as GameObject;
                }

                // Now we need to orient the newly spawned section, to connect with the last section spawned
                section.GetComponent<GenerationAttributes>().OrientTo(lastSection);

                sections[sectionsSpawned] = section;

                // Every section built after the first will be connecting another section, so always reduce openEnds right here
                openEnds -= 2; // 2: 1 for the brand new section that was connected, 1 for the old section it was connected to

                // Spawn Enemies
                foreach(Transform child in section.GetComponentsInChildren<Transform>())
                {
                    if (child.gameObject.CompareTag("EnemySpawn"))
                    {
                        int r = Random.Range(0, enemies.Length);

                        GameObject tempEnemy = Instantiate(enemies[r], child.position, child.rotation, section.transform) as GameObject;

                        // This should be removed later on, but it's a simple way to scale the enemies health as the level goes on.
                        double percent = (sectionsSpawned / numSections); // Unity is a fucker and isn't capturing this as it should be.  Evaluates to 0.  Cool.
                        double increaseBy = tempEnemy.GetComponent<EnemyAttributes>().enemyHealth * percent;

                        double tempHealth = tempEnemy.GetComponent<EnemyAttributes>().enemyHealth + increaseBy;
                        tempEnemy.GetComponent<EnemyAttributes>().IncreaseHealth(tempHealth);
                        //tempEnemy.GetComponent<EnemyAttributes>().enemyHealth = tempHealth;
                    }
                }
            }
            else
            {
                // Force the player to spawn in a culdesac type section
                int r = Random.Range(0, templateClosers.Count);

                section = Instantiate(templateClosers[r], new Vector3(currentX * offset, 0, currentZ * offset), gameObject.transform.rotation, gameObject.transform) as GameObject;

                sections[0] = section;

                GameObject playerSpawnPoint = section.transform.Find("Player").gameObject;
                // Instantiate Player
                GameObject tempPlayer = Instantiate(thePlayer, playerSpawnPoint.transform.position, playerSpawnPoint.transform.rotation, gameObject.transform) as GameObject;

                isFirstSpawn = false;

                // Don't spawn enemies in the first section
            }

            sectionsSpawned += 1;

            if (section.GetComponent<GenerationAttributes>().upPosZ)
            {
                openEnds++;
            }
            if (section.GetComponent<GenerationAttributes>().rightPosX)
            {
                openEnds++;
            }
            if (section.GetComponent<GenerationAttributes>().downNegZ)
            {
                openEnds++;
            }
            if (section.GetComponent<GenerationAttributes>().leftNegX)
            {
                openEnds++;
            }
        }
    }

	// Update is called once per frame
	void Update ()
    {
	
	}
}
