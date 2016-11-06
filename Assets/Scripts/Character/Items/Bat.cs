using UnityEngine;
using System.Collections;
using System;

public class Bat : MonoBehaviour, Item
{
    [Header("Weapon Values. Should be -1 if not applicable (ie uses for a bat)")]
    public float swingRate;
    public float damage;
    public bool defaultRightSwing;
    public float maxSwingAngle;

    private bool swinging;
     
	// Use this for initialization
	void Start ()
    {
	
	}

	// Update is called once per frame
	void Update ()
    {
        if (swinging)
        {
            //this code should be replaced by an animation
            //we should show the artists how to do animations
        }
    }

    public void Activate()
    {
        swinging = true;
    }

    public void Deactivate()
    {
        swinging = false;
    }
}
