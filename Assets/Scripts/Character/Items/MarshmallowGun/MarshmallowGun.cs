using UnityEngine;
using System.Collections;
using System;

public class MarshmallowGun : MonoBehaviour, Item
{
    public GameObject bullet;
    public GameObject launchPoint;
    public bool automatic;
    public float fireDelay;
    public bool autoAim;
    public int myPlayerID;

    private bool firing;
    private float currentTime;
    private float currentAngle;
    private Vector3 startRot;

    // Use this for initialization
    void Start()
    {
        startRot = transform.localRotation.eulerAngles;
        currentTime = fireDelay;
        //transform.localRotation = Quaternion.Euler(0, 0, 0);
    }

    public void SetDefaultScale()
    {
        transform.localScale = Vector3.one;
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
        if (firing && automatic) Activate();
    }

    public void Activate()
    {
        if (!firing || automatic)
        {
            if (currentTime > fireDelay)
            {
                //SoundManager.instance.PlayShootSound();

                firing = true;
                //launch bullet
                GameObject b = Instantiate(bullet);
                b.GetComponent<Marshmallow>().SetForward(transform.rotation.eulerAngles);
                b.GetComponent<Marshmallow>().myPlayerID = myPlayerID;
                b.GetComponent<Marshmallow>().myGun = this;
                b.transform.position = launchPoint.transform.position;
                b.transform.localScale = b.transform.localScale / 2;
                currentTime = 0;
            }
        }
    }

    public void Deactivate()
    {
        firing = false;
    }

    public void SetPlayerID(int id)
    {
        myPlayerID = id;
    }

    public void SendCharge(float c)
    {
        SendMessageUpwards("Charge", c);
    }
}
