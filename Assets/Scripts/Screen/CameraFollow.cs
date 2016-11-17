using UnityEngine;
using System.Collections;

public class CameraFollow : MonoBehaviour
{
    public GameObject player;
    public float lerpfactor;
    public float followDist;

	// Update is called once per frame
	void Update ()
    {
        Vector3 temp = new Vector3(player.transform.position.x, transform.position.y, player.transform.position.z - followDist);
        transform.position = Vector3.Lerp(transform.position, temp, Time.deltaTime * lerpfactor);
        transform.rotation = Quaternion.Lerp(transform.rotation, player.transform.rotation, Time.deltaTime * lerpfactor);
	}
}
