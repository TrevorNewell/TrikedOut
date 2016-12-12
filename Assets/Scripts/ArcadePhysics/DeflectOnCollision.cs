using UnityEngine;
using System.Collections;

public class DeflectOnCollision : MonoBehaviour
{
    public float maxAngle = 70;
    public Rigidbody body;

    void OnCollisionEnter(Collision collision)
    {
        print(collision.collider.tag);
        if (collision.collider.CompareTag("Bumper"))
        {
            Vector3 normal = collision.contacts[0].normal;
            Vector3 vel = body.velocity;

            Debug.Log("Angle: " + Vector3.Angle(vel, -normal));
            // Measure angle
            if (true )//Vector3.Angle(vel, -normal) > maxAngle)
            {
                // Trike bounces off the surface
                body.velocity = Vector3.Reflect(vel, normal);
            }
            else
            {
                // Trike collides with target - apply slow or whatever we want...
                //gameObject.GetComponentInParent<TrikeController>();
                
            }
        }
    }

	// Use this for initialization
	void Start ()
    {
        body = gameObject.GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update ()
    {
	
	}
}
