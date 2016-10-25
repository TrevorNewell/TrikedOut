using UnityEngine;
using System.Collections;

public class Checkpoint : MonoBehaviour
{
    //public int checkpointNumber;  // I planned on using this to track which checkpoint goes where, but a cleaner and easier method is to order them how you intend them to be passed in a race.  This is done in the hierarchy in the Editor.
    public bool isEnd = false;
    public MeshCollider frontCheck;
    public MeshCollider backCheck;
      
    [Header("Read Only *")]
    public bool hasPassedBack = false;
    public bool hasPassedFront = false;
    public bool hasPassed = false;
    public bool goingWrongWay = false;

	// Use this for initialization
	void Start ()
    {
	    
	}
	
	// Update is called once per frame
	void Update ()
    {
	
	}

    // Resets our variables to prepare for a new lap.
    public void NewLap()
    {
        hasPassedBack = false;
        hasPassedFront = false;
        hasPassed = false;
        goingWrongWay = false;
    }

    public void UpdateFront()
    {
        if (hasPassedBack)
        {
            hasPassedFront = true;
            hasPassed = true;
            goingWrongWay = false;

            if (isEnd)
            {
                SendMessageUpwards("CheckForLap");
            }
        }
    }

    public void UpdateBack()
    {
        if (hasPassedFront)
        {
            hasPassed = false;
            goingWrongWay = true;
        }
        else
        {
            hasPassedBack = true;
        }
    }
}
