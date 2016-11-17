using UnityEngine;
using System.Collections;

public class MarshmallowRot : MonoBehaviour {
    private float rotSpeed;
    private Vector3 rands;

	// Use this for initialization
	void Start ()
    {
        rotSpeed = Random.Range(100f, 150f);
        rotSpeed = 200;
        rands.x = Random.Range(-1f, 1f) * rotSpeed;
        rands.y = Random.Range(-1f, 1f) * rotSpeed;
        rands.z = Random.Range(-1f, 1f) * rotSpeed;
    }
	
	// Update is called once per frame
	void Update ()
    {
        //transform.rotation = Quaternion.Euler(transform.rotation.eulerAngles.x + rands.x * Time.deltaTime,
        //transform.rotation.eulerAngles.y + rands.y * Time.deltaTime,
        //transform.rotation.eulerAngles.z + rands.z * Time.deltaTime);

        transform.rotation = transform.rotation * Quaternion.AngleAxis(rands.x * Time.deltaTime, Vector3.right);
        transform.rotation = transform.rotation * Quaternion.AngleAxis(rands.y * Time.deltaTime, Vector3.up);
        transform.rotation = transform.rotation * Quaternion.AngleAxis(rands.z * Time.deltaTime, Vector3.forward);
	}
}
