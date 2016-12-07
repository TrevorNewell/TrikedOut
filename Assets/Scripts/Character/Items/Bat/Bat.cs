﻿using UnityEngine;
using System.Collections;
using System;

public class Bat : MonoBehaviour, Item
{
    public float swingDuration;
    public float hopDuration;
    public float hopHeight;
    public float maxSwingAngle;
    public float slowFactor;

    private bool swinging;
    private bool backswing;
    private bool endSwing;
    private float currentAngle;
    private float anglesPerSecond;
    private Vector3 startRot;
    private PlaceManager placeManager;
    private int myPlayerID;

    // Use this for initialization
    void Start()
    {
        //swinging = false;
        backswing = false;
        endSwing = false;
        anglesPerSecond = maxSwingAngle / swingDuration;
    }

    public bool Swinging()
    {
        return swinging;
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
                if (currentAngle >= maxSwingAngle)
                {
                    backswing = true;
                    int[] trikesAhead = placeManager.GetTrikesAhead(myPlayerID);
                    if(trikesAhead != null)
                    {
                        foreach (int i in trikesAhead)
                        {
                            GameObject.Find("P" + i.ToString()).GetComponentInChildren<ArcadeTrikeController>().Pop(slowFactor);
                        }
                    }
                }
            }
            else
            {
                currentAngle = currentAngle - anglesPerSecond * Time.deltaTime;
                if (currentAngle < 0)
                {
                    Deactivate();
                }
            }
            Vector3 newRot = new Vector3(startRot.x + currentAngle, startRot.y, startRot.z);

            transform.localRotation = Quaternion.Euler(newRot);
        }
    }

    public void Activate()
    {
        swinging = true;
        backswing = false;
        endSwing = false;
        currentAngle = 0;
        placeManager = GameObject.Find("Race Manager").GetComponent<PlaceManager>();
    }

    public void Deactivate()
    {
        Destroy(gameObject);
    }

    public void SetDefaultScale()
    {
        transform.localScale = new Vector3(100f, 100f, 100f);
        transform.localPosition = new Vector3(6.2f, 12.3f, 0f);
    }

    public void SetPlayerID(int id)
    {
        myPlayerID = id;
    }
}
