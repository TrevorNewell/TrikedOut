using UnityEngine;
using System.Collections;
using System;

public class MarshmallowGun : MonoBehaviour, Item
{
    [Header("Weapon Values. Should be -1 if not applicable (ie uses for a bat)")]
    public GameObject bullet;
    public GameObject launchPoint;
    public bool automatic;
    public float fireDelay;
    public bool autoAim;

    private bool firing;
    private float currentTime;
    private float currentAngle;
    private Vector3 startRot;

    // Use this for initialization
    void Start()
    {
        startRot = transform.localRotation.eulerAngles;
        currentTime = fireDelay;
    }

    public bool Firing()
    {
        return firing;
    }

    // Update is called once per frame
    void Update()
    {
        currentTime += Time.deltaTime;
        //autoaim code goes in here probably
    }

    public void Activate()
    {
        if (!firing || automatic)
        {
            if (currentTime > fireDelay)
            {
                firing = true;
                //launch bullet
                GameObject b = Instantiate(bullet);
                b.GetComponent<Marshmallow>().SetForward(transform.rotation.eulerAngles);
                b.transform.position = launchPoint.transform.position;
                currentTime = 0;
            }
        }
    }

    public void Deactivate()
    {
        firing = false;
    }

    public void TellDirectional(int d)
    {
        
    }
}
