using UnityEngine;
using System.Collections;

public class SpeedyCamera : MonoBehaviour
{
    public float minDOF = 60f;
    public float maxDOF = 100f;
    public float timeToBuild = 3f;
    public float timeToSlow = 7f;
    private float diff;
    private Camera cam;
    private NewMove move;

	// Use this for initialization
	void Start ()
    {
        cam = GetComponent<Camera>();
        diff = maxDOF - minDOF;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (move == null)
        {
            move = transform.parent.GetComponentInParent<NewMove>();
        }

        //Debug.Log(startDecay + " " + cam.fieldOfView + " " + minDOF);
        float fov = minDOF + move.GetCurrentSpeed() * (diff);
        cam.fieldOfView = cam.fieldOfView + (fov - cam.fieldOfView) * Time.deltaTime;
        //if (cam.fieldOfView < maxDOF && !startDecay) cam.fieldOfView = diff * move.GetCurrentSpeed() * Time.deltaTime / timeToBuild;
        //else if (cam.fieldOfView > minDOF && startDecay) cam.fieldOfView -= diff * move.GetCurrentSpeed() * Time.deltaTime / timeToSlow;
	}
}
