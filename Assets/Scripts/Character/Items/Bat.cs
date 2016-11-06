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
    private bool backswing;
    private bool endSwing;
    private float currentAngle;
    private float anglesPerSecond;
    private Vector3 startRot;

	// Use this for initialization
	void Start ()
    {
        swinging = false;
        backswing = false;
        endSwing = false;
        startRot = transform.localRotation.eulerAngles;
        anglesPerSecond = maxSwingAngle / swingRate;
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
