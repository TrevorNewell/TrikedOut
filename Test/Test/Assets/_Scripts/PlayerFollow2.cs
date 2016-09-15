using UnityEngine;
using System.Collections;

public class PlayerFollow2 : MonoBehaviour 
{
    public Transform target;
    private float xDistance;
    private float yDistance;
    private float zDistance;

    void Start()
    {
        xDistance = transform.position.x - target.position.x;
        yDistance = transform.position.y - target.position.y;
        zDistance = transform.position.z - target.position.z;
    }

    void  Update()
    {
        transform.position = new Vector3(target.position.x + xDistance, target.position.y + yDistance, target.position.z + zDistance);
    }
}
