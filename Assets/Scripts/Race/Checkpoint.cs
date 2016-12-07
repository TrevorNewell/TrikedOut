using UnityEngine;
using System.Collections;

public class Checkpoint : MonoBehaviour
{
    //public int checkpointNumber;  // I planned on using this to track which checkpoint goes where, but a cleaner and easier method is to order them how you intend them to be passed in a race.  This is done in the hierarchy in the Editor.
    public bool isEnd = false;
    public MeshCollider frontCheck;
    public MeshCollider backCheck;
    
    //public bool hasPassedBack = false;
    //public bool hasPassedFront = false;
    //public bool hasPassed = false;
    //public bool goingWrongWay = false;

    // players 1 through 4
    // 0 - hasPassedBack
    // 1 - hasPassedFront
    // 2 - hasPassed
    // 3 - goingWrongWay
    private bool[,] playerbools;

    public bool hasPassed(int pNum)
    {
        return playerbools[pNum, 2];
    }

    // Use this for initialization
    void Start ()
    {
        playerbools = new bool[5, 4];

        // Don't render any checkpoint meshes on Start.  We just need the Colliders enabled
        MeshRenderer[] m = gameObject.GetComponentsInChildren<MeshRenderer>();
        foreach (MeshRenderer r in m)
        {
            r.enabled = false;
        } 
    }

    // Resets our variables to prepare for a new lap.
    public void NewLap(int pNum)
    {
        /*hasPassedBack = false;
        hasPassedFront = false;
        hasPassed = false;
        goingWrongWay = false;*/

        playerbools[pNum, 0] = false;
        playerbools[pNum, 1] = false;
        playerbools[pNum, 2] = false;
        playerbools[pNum, 3] = false;
    }

    public void UpdateFront(int pNum)
    {
        /*if (hasPassedBack)
        {
            hasPassedFront = true;
            hasPassed = true;
            goingWrongWay = false;

            if (isEnd)
            {
                SendMessageUpwards("CheckForLap");
            }
        }*/

        if (playerbools[pNum, 0])
        {
            print(pNum);
            playerbools[pNum, 1] = true;
            playerbools[pNum, 2] = true;
            playerbools[pNum, 3] = false;
            SendMessageUpwards("UpdatePassed", pNum);
            if (isEnd)
            {
                SendMessageUpwards("CheckForLap", pNum);
            }
        }
    }

    public void UpdateBack(int pNum)
    {
        /*if (hasPassedFront)
        {
            hasPassed = false;
            goingWrongWay = true;
        }
        else
        {
            hasPassedBack = true;
        }*/

        if (playerbools[pNum, 1])
        {
            playerbools[pNum, 2] = false;
            playerbools[pNum, 3] = true;
        }
        else
        {
            playerbools[pNum, 0] = true;
        }
    }
}
