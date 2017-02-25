using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraTurnDelay : MonoBehaviour
{
    public float angle = 30f;
    public float speed = 1f;

    private float currentAngle = 0f;
    private float currentSpeed = 0f;
    private float turnMult = 1f;
    private bool turning = false;
    private Vector3 localRot;

    private void Start()
    {
        localRot = transform.localRotation.eulerAngles;
    }

	// Update is called once per frame
	void Update ()
    {
		if (turning)
        {
            if (currentAngle * turnMult < angle)
            {
                currentAngle += turnMult * speed * Time.deltaTime;
                if (currentAngle * turnMult >= angle) currentAngle = angle * turnMult;
            }
        }
        else
        {
            if (currentAngle * turnMult > 0f)
            {
                //currentSpeed -= Time.deltaTime;
                currentAngle -= turnMult * speed * 0.5f * Time.deltaTime;
                if (currentAngle * turnMult < 0f)
                {
                    currentAngle = 0f;
                }
            }
        }
        transform.localRotation = Quaternion.Euler(localRot.x, currentAngle, localRot.z);
	}

    public void Stop()
    {
        turning = false;
    }

    public void TurnRight()
    {
        turning = true;
        currentSpeed = speed;
        turnMult = -1f;
    }

    public void TurnLeft()
    {
        turning = true;
        currentSpeed = speed;
        turnMult = 1f;
    }
}
