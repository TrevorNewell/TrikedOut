using UnityEngine;
using System.Collections.Generic;
using System;

public class Marshmallow : MonoBehaviour
{
    public float speed;
    public float slowFactor;
    public float timeTilSticky;
    public float lifeSpan;
    public float stickyLifespanGround;
    public float stickyLifespanPlayer;
    public float launchAngleFactorMin;
    public float launchAngleFactorMax;
    public float gravity;
    public float myPlayerID;
    public MarshmallowGun myGun;

    public GameObject projMallow;
    public GameObject stuckMallow;

    private MarshmallowRot mrot;

    private float xFactor;
    private float yFactor;
    private float gravAngle;
    private float zFactor;

    private Vector3 forward;
    private bool stuck;
    private bool grounded;
    private float currentTime;
    private float upSpeed;

    void Start()
    {
        mrot = projMallow.GetComponent<MarshmallowRot>();
    }

    public void SetForward(Vector3 v)
    {
        transform.rotation = Quaternion.Euler(v.x, v.y, 0);

        xFactor = Mathf.Sin(transform.rotation.eulerAngles.y * Mathf.Deg2Rad) * speed;

        gravAngle = Mathf.Cos(transform.rotation.eulerAngles.x * Mathf.Deg2Rad);
        upSpeed = UnityEngine.Random.Range(launchAngleFactorMin, launchAngleFactorMax);
        yFactor = gravAngle * upSpeed;

        zFactor = Mathf.Cos(transform.rotation.eulerAngles.y * Mathf.Deg2Rad) * speed;

        xFactor -= upSpeed * Mathf.Sin(transform.rotation.eulerAngles.x * Mathf.Deg2Rad);
        
        stuck = false;

        currentTime = 0f;
    }
	
	// Update is called once per frame
	void Update ()
    {
        if (currentTime < timeTilSticky)
            currentTime += Time.deltaTime;
        if(!stuck && !grounded) yFactor -= gravAngle * gravity * Time.deltaTime;
        //transform.position = new Vector3(transform.position.x, transform.position.y, transform.position.z + speed * Time.deltaTime);
        transform.localPosition = new Vector3(transform.localPosition.x + xFactor * Time.deltaTime, transform.localPosition.y + yFactor * Time.deltaTime, transform.localPosition.z + zFactor * Time.deltaTime);
        lifeSpan -= Time.deltaTime;
        if (lifeSpan < 0) DestroyMarshmallow();
	}

    void DestroyMarshmallow()
    {
        /*foreach (ArcadeTrikeController atc in slowedTrikes)
        {
            if (atc.slowed)
            {
                atc.slowed = false;
                atc.slowFactor -= slow;
            }
        }*/

        Destroy(gameObject);
    }

    void OnTriggerEnter(Collider c)
    {
        if (c.CompareTag("Player") && !stuck && currentTime > timeTilSticky)
        {
            if (int.Parse(c.name.Substring(1)) == myPlayerID) return;
            //slow
            c.GetComponent<NewMove>().SetBoost(slowFactor, stickyLifespanPlayer, 0.8f);
            stuck = true;
            lifeSpan = stickyLifespanPlayer;
            transform.parent = c.gameObject.transform;
        }
        if (c.CompareTag("Terrain") && !stuck)
        {
            mrot.enabled = false;
            grounded = true;
            xFactor = 0;
            yFactor = 0;
            zFactor = 0;
            lifeSpan = stickyLifespanGround;
            projMallow.SetActive(false);
            stuckMallow.SetActive(true);
            //GetComponent<Rigidbody>().velocity = Vector3.zero;
            //GetComponent<Rigidbody>().useGravity = false;
            //GetComponent<Rigidbody>().isKinematic = true;
        }
    }
}
