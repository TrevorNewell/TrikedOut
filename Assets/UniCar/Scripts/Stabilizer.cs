using UnityEngine;
using System.Collections;
 
public class Stabilizer : MonoBehaviour {
 
    public float stability = 0.3f;
    public float speed = 2.0f;
  
    // Update is called once per frame
    void FixedUpdate ()
	{
        Vector3 predictedUp = Quaternion.AngleAxis(
            GetComponent<Rigidbody>().angularVelocity.magnitude * Mathf.Rad2Deg * stability / speed,
            GetComponent<Rigidbody>().angularVelocity) * transform.up;
		 
		Vector3 torqueVector = Vector3.Cross(predictedUp, Vector3.up);
		// Uncomment the next line to stabilize on only 1 axis. 
		//torqueVector = Vector3.Project(torqueVector, transform.forward);
        GetComponent<Rigidbody>().AddTorque(torqueVector * speed * speed);
    }
}