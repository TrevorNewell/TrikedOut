using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Jack : MonoBehaviour
{
    public float initialTossY = 500f;
    public float decayFactor = 0.9f;
    public int bounces = 3;
    public int spinOutRotations = 5;

    private Rigidbody rigidBody;
    private float currentToss;
    private int currentBounce;

    void Toss()
    {
        rigidBody.AddForce(Vector3.up * currentToss);
    }

    // Use this for initialization
	void Start ()
    {
        rigidBody = GetComponent<Rigidbody>();
        currentToss = initialTossY;

        Toss();
	}
	
	// Update is called once per frame
	void Update ()
    {

	}

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Terrain")
        { 
            rigidBody.velocity = Vector3.zero;
            rigidBody.angularVelocity = Vector3.zero;
            if (++currentBounce >= bounces)
            {
                GetComponent<MarshmallowRot>().Stop();
                return;
            }
            currentToss *= decayFactor;
            Toss();
        }
        else if (other.tag == "Player")
        {
            rigidBody.velocity = Vector3.zero;
            rigidBody.angularVelocity = Vector3.zero;

            rigidBody.AddForce(other.gameObject.transform.forward * 1000f);
            rigidBody.AddForce(Vector3.up * 600f);
            GetComponent<MarshmallowRot>().StartRot();
            other.GetComponent<NewMove>().SetBoost(0.2f, 2.5f, 0.2f);
            other.GetComponent<ModelController>().SpinOut(spinOutRotations);
        }
    }
}
