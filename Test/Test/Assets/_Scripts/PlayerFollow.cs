using UnityEngine;
using System.Collections;

public class PlayerFollow : MonoBehaviour
{
    public float followDistance = 0.5f;

    public float dampTime = 0.15f;
    private Vector3 velocity = Vector3.zero;
    public Transform target;

    // Update is called once per frame
    void Update()
    {
        Vector3 point = GetComponent<Camera>().WorldToViewportPoint(target.position);
        Vector3 delta = target.position - GetComponent<Camera>().ViewportToWorldPoint(new Vector3(0.5f, GetComponent<Camera>().transform.position.y, followDistance)); 
        Vector3 destination = transform.position + delta;
        //destination.y = point.y;
        transform.position = Vector3.SmoothDamp(transform.position, destination, ref velocity, dampTime);
    }
}
