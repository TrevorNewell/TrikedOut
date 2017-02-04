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
    private BoxCollider[] colliders;
    private bool live;
    private float currentToss;
    private int currentBounce;

    public void Toss()
    {
        rigidBody.AddForce(Vector3.up * currentToss);
        /*if (!live)
        {
            transform.parent = transform.parent.parent.parent;
            rigidBody.useGravity = true;
            foreach (BoxCollider b in colliders)
            {
                b.enabled = true;
            }

            GetComponent<MarshmallowRot>().StartRot();
        }*/
    }

    // Use this for initialization
	void Start ()
    {
        rigidBody = GetComponent<Rigidbody>();
        colliders = GetComponents<BoxCollider>();
        currentToss = initialTossY;
        live = false;

        /*rigidBody.useGravity = false;
        foreach (BoxCollider b in colliders)
        {
            b.enabled = false;
        }

        GetComponent<MarshmallowRot>().Stop();*/

        Toss();
    }

    public void AddForwardForce(Vector3 dir, float scale)
    {
        if (rigidBody == null) rigidBody = GetComponent<Rigidbody>();
        rigidBody.AddForce(dir * scale);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Terrain")
        {
            live = true;
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
            if (!live) return;

            rigidBody.velocity = Vector3.zero;
            rigidBody.angularVelocity = Vector3.zero;
            rigidBody.AddForce(other.gameObject.transform.forward * 1000f);
            currentToss = 600f;
            Toss();

            currentBounce = 0;
            bounces = 2;

            GetComponent<MarshmallowRot>().StartRot();
            other.GetComponent<NewMove>().SetBoost(0.2f, 2.5f, 0.2f);
            other.GetComponent<ModelController>().SpinOut(spinOutRotations);
        }
    }
}
