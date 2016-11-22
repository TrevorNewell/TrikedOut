using UnityEngine;
using System.Collections;
using System;

public class Bat : MonoBehaviour, Item
{
    [Header("Weapon Values. Should be -1 if not applicable (ie uses for a bat)")]
    public float swingRate;
    public int damage;
    public bool defaultRightSwing;
    public float maxSwingAngle;

    private bool swinging;
    private bool backswing;
    private bool endSwing;
    private float currentAngle;
    private float anglesPerSecond;
    private Vector3 startRot;
    private float[] swingAngles;

    // Use this for initialization
    void Start()
    {
        swinging = false;
        backswing = false;
        endSwing = false;
        transform.localRotation = Quaternion.Euler(transform.localEulerAngles.x, 0, 0);
        startRot = transform.localRotation.eulerAngles;
        anglesPerSecond = maxSwingAngle / swingRate;
        swingAngles = new float[3];
        swingAngles[0] = 0f;
        swingAngles[1] = -60f;
        swingAngles[2] = 180f;
    }

    public bool Swinging()
    {
        return swinging;
    }

    int NearestNeighbor()
    {
        GameObject[] players = GameObject.FindGameObjectsWithTag("Player");
        if (players == null)
            return 0;

        GameObject nearest = players[0];
        int pid = transform.parent.GetComponent<Player>().GetID();
        for (int i = 1; i < players.Length; i++)
        {
            int nnid = nearest.GetComponent<Player>().GetID();
            if (Vector3.Distance(transform.parent.position, nearest.transform.position) > Vector3.Distance(transform.parent.position, players[i].transform.position) || nnid == pid)
            {
                int nid = players[i].GetComponent<Player>().GetID();
                if (nid != pid) nearest = players[i];
            }
        }

        float dist = Vector3.Distance(transform.parent.position, nearest.transform.position);
        float zAx = nearest.transform.position.z - transform.parent.position.z;
        float neighborAngleFromX = Mathf.Rad2Deg * Mathf.Acos(zAx / dist);
        float rot = transform.parent.GetComponent<Move>().GetRotation();
        float zeroAxis = rot - 90;
        float neighborAngleFromZeroAxis = neighborAngleFromX - zeroAxis;

        if (neighborAngleFromZeroAxis < 0) neighborAngleFromZeroAxis += 360;
        else if (neighborAngleFromZeroAxis > 359) neighborAngleFromZeroAxis -= 360;

        //print(neighborAngleFromZeroAxis);

        if (neighborAngleFromZeroAxis > 40 && neighborAngleFromZeroAxis < 110)
            return 1;
        else if (neighborAngleFromZeroAxis > 110 && neighborAngleFromZeroAxis < 230)
            return 0;
        else if (neighborAngleFromZeroAxis < 40 || (neighborAngleFromZeroAxis > 230 && neighborAngleFromZeroAxis < 360))
            return 2;

        return 0;
    }

	// Update is called once per frame
	void Update ()
    {
        if (swinging)
        {
            //this code should be replaced by an animation
            //we should show the artists how to do animations

            if (!backswing)
            {
                currentAngle = currentAngle + anglesPerSecond * Time.deltaTime;
                if (currentAngle < maxSwingAngle)
                {
                    backswing = true;
                }
            }
            else
            {
                currentAngle = currentAngle - anglesPerSecond * Time.deltaTime;
                if (currentAngle > 0)
                {
                    backswing = false;
                    if (endSwing)
                    {
                        swinging = false;
                    }
                }
            }

            Vector3 newRot = new Vector3(startRot.x, startRot.y + currentAngle, startRot.z);

            transform.localRotation = Quaternion.Euler(newRot);
        }
    }

    public void TellDirectional(int d)
    {
        startRot.y = swingAngles[d];
        print("CHANGED");
    }

    public void Activate()
    {
        swinging = true;
        backswing = false;
        endSwing = false;
        currentAngle = 0;
    }

    public void Deactivate()
    {
        endSwing = true;
    }
}
