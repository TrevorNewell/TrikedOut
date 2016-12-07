using UnityEngine;
using System.Collections;

public class SpeedyCamera : MonoBehaviour
{
    public float minDOF;
    public float maxDOF;
    public float timeToDecay;
    public float timeToBuild;
    public float timeToSlow;
    private bool startDecay;
    private float currentTime;
    private float diff;
    private Camera cam;
    private ArcadeTrikeController atc;
    private Move move;

	// Use this for initialization
	void Start ()
    {
        cam = GetComponent<Camera>();
        diff = maxDOF - minDOF;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (atc == null || move == null)
        {
            atc = transform.parent.parent.gameObject.GetComponentInChildren<ArcadeTrikeController>();
            move = transform.parent.GetComponentInParent<Move>();
        }
        if (!move.IsPedalling())
        {
            currentTime += Time.deltaTime;
            if (currentTime > timeToDecay)
                startDecay = true;
        }
        else
        {
            startDecay = false;
            currentTime = 0;
        }
        if (cam.fieldOfView < maxDOF && !startDecay) cam.fieldOfView += diff * atc.GetPercentOfMaxSpeed() * Time.deltaTime / timeToBuild;
        else if (cam.fieldOfView > minDOF && startDecay) cam.fieldOfView -= diff * atc.GetPercentOfMaxSpeed() * Time.deltaTime / timeToSlow;
	}
}
