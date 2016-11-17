using UnityEngine;
using System.Collections;
using System;

public class Marshmallow : MonoBehaviour
{
    public int damage;
    public float speed;
    public float slow;
    public float lifeSpan;

    private float xFactor;
    private float zFactor;

    private Vector3 forward;

    public void SetForward(Vector3 v)
    {
        transform.rotation = Quaternion.Euler(0, v.y, 0);

        xFactor = Mathf.Sin(transform.rotation.eulerAngles.y * Mathf.Deg2Rad) * speed;
        zFactor = Mathf.Cos(transform.rotation.eulerAngles.y * Mathf.Deg2Rad) * speed;
    }
	
	// Update is called once per frame
	void Update ()
    {
        //transform.position = new Vector3(transform.position.x, transform.position.y, transform.position.z + speed * Time.deltaTime);
        transform.localPosition = new Vector3(transform.localPosition.x + xFactor * Time.deltaTime, transform.localPosition.y, transform.localPosition.z + zFactor * Time.deltaTime);
        lifeSpan -= Time.deltaTime;
        if (lifeSpan < 0) Destroy(gameObject);
	}

    void OnTriggerEnter(Collider c)
    {
        print("triggered");
        if (c.CompareTag("Player"))
        {
            c.GetComponent<Player>().Damage(damage);
        }

        Destroy(gameObject);
    }
}
