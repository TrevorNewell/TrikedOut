using UnityEngine;
using System.Collections;

public class GenerationAttributes : MonoBehaviour
{
    public bool upPosZ;
    public bool rightPosX;
    public bool downNegZ;
    public bool leftNegX;

    [System.Serializable]
    public struct Point
    {
        public int x;
        public int z;
    }

    public Point position;

    public int numOpenings;  // This has to be populated with the correct variable.  Determining on start doesn't work how I have it set up.  Start for the template is called after it's created, 
    // and I need it to be as soon as the scene is ran and before any templates are spawned in. b
    public int currentOpenings;

    // Use this for initialization
    void Start ()
    {
        currentOpenings = numOpenings;
        //if (upPosZ)
        //{
        //    numOpenings++;
        //}
        //if (rightPosX)
        //{
        //    numOpenings++;
        //}
        //if (downNegZ)
        //{
        //    numOpenings++;
        //}
        //if (leftNegX)
        //{
        //    numOpenings++;
        //}

        //position.x = (int)(transform.position.x / FindObjectOfType<RandomGeneration>().offset);
        //position.z = (int)(transform.position.z / FindObjectOfType<RandomGeneration>().offset);
    }

    Point calculateNextPosition(Point lastSection, int orientation)
    {
        Point p = new Point();

        if (orientation == 2) // Up
        {
            p.z = lastSection.z + 1;
            p.x = lastSection.x;
        }
        else if (orientation == 3) // Right
        {
            p.x = lastSection.x + 1;
            p.z = lastSection.z;
        }
        else if (orientation == 0) // Down
        {
            p.z = lastSection.z - 1;
            p.x = lastSection.x;
        }
        else if (orientation == 1) // Left
        {
            p.x = lastSection.x - 1;
            p.z = lastSection.z; 
        }
        else
        {
            print("Invalid orientation: " + orientation);
        }

        Vector3 newPosition = new Vector3(p.x * gameObject.GetComponentInParent<RandomGeneration>().offset, 0, p.z * gameObject.GetComponentInParent<RandomGeneration>().offset);
        transform.position = newPosition;

        return p;
    }

    public void OrientTo(GameObject section)
    {
        // Decide which opening on this object to rotate towards the opening of the last object
        int r = Random.Range(1, numOpenings);

        int count = 0;

        int pos = -1;
        if (upPosZ) count++;
        if (count == r && pos == -1)
        {
            upPosZ = false;
            pos = 0;
        }
        if (rightPosX) count++;
        if (count == r && pos == -1)
        {
            rightPosX = false;
            pos = 1;
        }
        if (downNegZ) count++;
        if (count == r && pos == -1)
        {
            downNegZ = false;
            pos = 2;
        }
        if (leftNegX) count++;
        if (count == r && pos == -1)
        {
            leftNegX = false;
            pos = 3;
        }

        GenerationAttributes temp = section.GetComponent<GenerationAttributes>();

        int last = -1;

        // At this point, when this method is called, the section parameter only has one opening.  We use that to decide how far to rotate this object.
        if (temp.upPosZ)
        {
            temp.upPosZ = false;
            last = 2;
        }
        else if (temp.rightPosX)
        {
            temp.rightPosX = false;
            last = 3;
        }
        else if (temp.downNegZ)
        {
            temp.downNegZ = false;
            last = 0;
        }
        else if (temp.leftNegX)
        {
            temp.leftNegX = false;
            last = 1;
        }
        else
        {
            print("WHERE'S THE FUCKING OPENING?!");
        }

        position = calculateNextPosition(temp.position, last);

        int rotations = last - pos;

        // If rotations is negative, we have to correct it by subtracting itself from 4.
        if (rotations < 0)
        {
            rotations = 4 + rotations; // (rotations is negative so we add)
        }

        Rotate(rotations * 90);

        // Update numOpenings and the bools for both this object and the parameter  **Verify the parameters values actually change** *Bools changed above*
        numOpenings--;
        temp.numOpenings--;
    }

    void Rotate(int rotationAngle) // If our template was rotated to fit a street on another template, we need to adjust where the opening lie
    {
        gameObject.transform.Rotate(new Vector3(0, rotationAngle, 0));

        // Based on how much we rotated, we need to update where the new opening is. (There should only be one)
        if (rotationAngle == 90)
        {
            if (upPosZ)
            {
                upPosZ = false;
                rightPosX = true;
            }
            else if (rightPosX)
            {
                rightPosX = false;
                downNegZ = true;
            }
            else if (downNegZ)
            {
                downNegZ = false;
                leftNegX = true;
            }
            else if (leftNegX)
            {
                leftNegX = false;
                upPosZ = true;
            }
        }
        else if (rotationAngle == 180)
        {
            if (upPosZ)
            {
                upPosZ = false;
                downNegZ = true;
            }
            else if (rightPosX)
            {
                rightPosX = false;
                leftNegX = true;
            }
            else if (downNegZ)
            {
                downNegZ = false;
                upPosZ = true;
            }
            else if (leftNegX)
            {
                leftNegX = false;
                rightPosX = true;
            }
        }
        else if (rotationAngle == 270)
        {
            if (upPosZ)
            {
                upPosZ = false;
                leftNegX = true;
            }
            else if (rightPosX)
            {
                rightPosX = false;
                upPosZ = true;
            }
            else if (downNegZ)
            {
                downNegZ = false;
                rightPosX = true;
            }
            else if (leftNegX)
            {
                leftNegX = false;
                downNegZ = true;
            }
        }
        else
        {
            print("Invalid rotation angle: " + rotationAngle);
        }
    }

    // Update is called once per frame
    void Update ()
    {
	
	}
}
