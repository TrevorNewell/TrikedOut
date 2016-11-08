using UnityEngine;
using System.Collections;

// This script has been deprecated. 
public class HandleRotation : MonoBehaviour
{
    public float maxAngle;
    public void SetRotation(float angle)
    {
        transform.localRotation = Quaternion.Euler(0, angle, 0);

        /*
        if (transform.localRotation.eulerAngles.y > maxAngle)
        {
            transform.localRotation = Quaternion.Euler(transform.localRotation.eulerAngles.x, maxAngle, transform.localRotation.eulerAngles.z); // not working
        }
        else if (transform.localRotation.eulerAngles.y < -maxAngle)
        {
            transform.localRotation = Quaternion.Euler(transform.localRotation.eulerAngles.x, -maxAngle, transform.localRotation.eulerAngles.z);
        }
        else
        {
            //transform.localEulerAngles = new Vector3(0, angle, 0);
            //transform.localRotation = Quaternion.Euler(0, angle, 0);
        }
        */
    }
}
