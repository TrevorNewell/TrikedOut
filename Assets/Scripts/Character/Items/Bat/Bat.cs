using UnityEngine;
using System.Collections;
using System;

public class Bat : MonoBehaviour, Item
{
    public float swingDuration;
    public float hopDuration;
    public float hopHeight;
    public float maxSwingAngle;
    public float slowFactor;
    public GameObject batModel;

    private bool hasBat;
    private float batDuration;
    private bool swinging;
    private bool backswing;
    private bool endSwing;
    private float currentAngle;
    private float anglesPerSecond;
    private Vector3 startRot;
    private PlaceManager placeManager;
    private int myPlayerID;

    private Vector3 ogPosition;
    private Quaternion ogRotation;

    // Use this for initialization
    void Start()
    {
        //swinging = false;
        backswing = false;
        endSwing = false;
        anglesPerSecond = maxSwingAngle / swingDuration;
        ogPosition = transform.localPosition;
        ogRotation = transform.localRotation;
        batModel.SetActive(false);
    }

    public bool Swinging()
    {
        return swinging;
    }

    public void GiveBat(float bd)
    {
        hasBat = true;
        batDuration = bd;
        batModel.SetActive(true);
    }

	// Update is called once per frame
	void Update ()
    {
        if (batDuration > 0)
        {
            batDuration -= Time.deltaTime;
        }
        if (batDuration <= 0)
        {
            hasBat = false;
        }

        if (swinging)
        {
            //this code should be replaced by an animation
            //we should show the artists how to do animations

            if (!backswing)
            {
                currentAngle = currentAngle + anglesPerSecond * Time.deltaTime;
                if (currentAngle >= maxSwingAngle)
                {
                    backswing = true;
                    int[] trikesAhead = placeManager.GetTrikesAhead(myPlayerID);
                    if(trikesAhead != null)
                    {
                        foreach (int i in trikesAhead)
                        {
                            //DO SOMETHING TO THE OTHER PLAYERS
                            //GameObject.Find("P" + i.ToString()).GetComponentInChildren<ArcadeTrikeController>().Pop(slowFactor);
                        }
                    }
                }
            }
            else
            {
                if(currentAngle > 0) currentAngle = currentAngle - anglesPerSecond * Time.deltaTime;
                if (currentAngle <= 0)
                {
                    currentAngle = 0;
                    Deactivate();
                }
            }
            Vector3 newRot = new Vector3(startRot.x + currentAngle, startRot.y, startRot.z);

            transform.localRotation = Quaternion.Euler(newRot);
        }
    }

    public void Activate()
    {
        if (!hasBat) return;
        batModel.SetActive(true);
        swinging = true;
        backswing = false;
        endSwing = false;
        currentAngle = 0;
        placeManager = GameObject.Find("Race Manager").GetComponent<PlaceManager>();
        SetDefaultScale();
    }

    public void Deactivate()
    {
        //Destroy(gameObject);
        if(!hasBat) batModel.SetActive(false);
    }

    public void SetDefaultScale()
    {
        transform.localRotation = ogRotation;//new Vector3(100f, 100f, 100f);
        transform.localPosition = ogPosition;//new Vector3(1.3f, 0.4f, 0.09f);
    }

    public void SetPlayerID(int id)
    {
        myPlayerID = id;
    }
}
