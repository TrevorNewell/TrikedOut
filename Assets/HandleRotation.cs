using UnityEngine;
using System.Collections;

// This is here only because I couldn't figure out how to access the local rotation of the handlebar
public class HandleRotation : MonoBehaviour
{
    public float maxAngle;
    public void SetRotation(float angle)
    {
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
            transform.Rotate(new Vector3(0, angle, 0), Space.Self);
        }
    }
}
