using UnityEngine;
using System.Collections;


public class PlayerFollow3 : MonoBehaviour
{ 
    public float dampTime = 0.15f;
    public Transform target;

    private Vector3 velocity = Vector3.zero;

    void Update()
    {
        if (target)
        {
            Vector3 aheadPoint = target.position + new Vector3(target.GetComponent<Rigidbody>().velocity.x, gameObject.transform.position.y, target.GetComponent<Rigidbody>().velocity.z);
            Vector3 point = Camera.main.WorldToViewportPoint(aheadPoint);
            Vector3 delta = aheadPoint - Camera.main.ViewportToWorldPoint(new Vector3(gameObject.transform.position.x, point.y, gameObject.transform.position.z));
            Vector3 destination = transform.position + delta;
            transform.position = Vector3.SmoothDamp(transform.position, destination, ref velocity, dampTime);
        }
    }
}

