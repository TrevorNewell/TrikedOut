using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TrikeController : MonoBehaviour
{
    public GameObject newCenterOfMass;
    public GameObject backWheels;
    public GameObject frontWheel;
    public GameObject handleBar;
    public List<AxleInfoDual> dualAxleInfos; // the information about each individual axle
    public List<AxleInfoSingle> singleAxleInfos; // the information about each individual axle
    public float maxMotorTorque; // maximum torque the motor can apply to wheel
    public float maxSteeringAngle; // maximum steer angle the wheel can have
    public float antiRollFactor = 5000.0f;

    public void Start()
    {
        //gameObject.GetComponent<Rigidbody>().centerOfMass = newCenterOfMass.transform.position;

        handleBar.AddComponent<HandleRotation>();
        handleBar.GetComponent<HandleRotation>().maxAngle = maxSteeringAngle;

        foreach (AxleInfoDual axleInfo in dualAxleInfos)
        {
            axleInfo.antiRoll = gameObject.AddComponent<AntiRoll>();// AntiRoll(axleInfo.leftWheel, axleInfo.rightWheel);
            axleInfo.antiRoll.wheelL = axleInfo.leftWheel;
            axleInfo.antiRoll.wheelR = axleInfo.rightWheel;
            axleInfo.antiRoll.antiRoll = antiRollFactor;
        }
    }

    public void ApplyLocalPositionToVisuals(WheelCollider collider, bool isFront)
    {
        Vector3 position;
        Quaternion rotation;
        collider.GetWorldPose(out position, out rotation);

        //visualWheel.transform.position = position;  //This should be uncommented but it won't be until we have each wheel separately.  This snaps the wheel directly
        //visualWheel.transform.rotation = rotation;

        if (isFront)
        {
            //handleBar.GetComponent<HandleRotation>().SetRotation(collider.steerAngle); //handleBar.transform.Rotate(new Vector3(0, collider.steerAngle, 0), Space.Self);

            //handleBar.transform.rotation = rotation;
            //handleBar.transform.rotation = Quaternion.AngleAxis(collider.steerAngle, handleBar.transform.rotation.eulerAngles); //new Quaternion(handleBar.transform.rotation.x, collider.steerAngle, handleBar.transform.rotation.z, handleBar.transform.rotation.w);
        }
        else
        {
            backWheels.transform.rotation = rotation;
        }
    }

    public void FixedUpdate()
    {
        float motor = 0;
        float steering = 0;

        motor = maxMotorTorque * Input.GetAxis("Vertical");
        steering = maxSteeringAngle * Input.GetAxis("Horizontal");

        foreach (AxleInfoDual axleInfo in dualAxleInfos)
        {
            if (axleInfo.steering && steering != 0)
            {
                axleInfo.leftWheel.steerAngle = steering;
                axleInfo.rightWheel.steerAngle = steering;
            }
            if (axleInfo.motor && motor != 0)
            {
                axleInfo.leftWheel.motorTorque = motor;
                axleInfo.rightWheel.motorTorque = motor;
            }

            ApplyLocalPositionToVisuals(axleInfo.leftWheel, axleInfo.hasHandleBar);
            ApplyLocalPositionToVisuals(axleInfo.rightWheel, axleInfo.hasHandleBar);
        }

        foreach (AxleInfoSingle axleInfo in singleAxleInfos)
        {
            if (axleInfo.steering && steering != 0)
            {
                axleInfo.frontWheel.steerAngle = steering;
            }
            if (axleInfo.motor && motor != 0)
            {
                axleInfo.frontWheel.motorTorque = motor;
            }
            ApplyLocalPositionToVisuals(axleInfo.frontWheel, axleInfo.hasHandleBar);
        }
    }
}

[System.Serializable]
public class AxleInfoDual
{
    public WheelCollider leftWheel;
    public WheelCollider rightWheel;
    [System.NonSerialized] public AntiRoll antiRoll;
    public bool motor; // is this wheel attached to motor?
    public bool steering; // does this wheel apply steer angle?
    public bool hasHandleBar; // Does this wheel have a handlebar that also needs rotated? (or other game object)
    //public GameObject handleBarPivot;
}

[System.Serializable]
public class AxleInfoSingle
{
    // Need to include handlebars somewhere.  They will rotate at the same rate as the front wheel does.
    public WheelCollider frontWheel;
    public bool motor; // is this wheel attached to motor?
    public bool steering; // does this wheel apply steer angle?
    public bool hasHandleBar;
}

[System.Serializable]
public class AntiRoll : MonoBehaviour
{
    public WheelCollider wheelL;
    public WheelCollider wheelR; // var WheelR : WheelCollider;
    public float antiRoll = 5000.0f;

    public AntiRoll(WheelCollider l, WheelCollider r)
    {
        wheelL = l;
        wheelR = r;
    }

    void FixedUpdate()
    {
        WheelHit hit;
        float travelL = 1.0f;
        float travelR = 1.0f;

        bool groundedL = wheelL.GetGroundHit(out hit);
        if (groundedL)
            travelL = (-wheelL.transform.InverseTransformPoint(hit.point).y - wheelL.radius) / wheelL.suspensionDistance;

        bool groundedR = wheelR.GetGroundHit(out hit);
        if (groundedR)
            travelR = (-wheelR.transform.InverseTransformPoint(hit.point).y - wheelR.radius) / wheelR.suspensionDistance;

        float antiRollForce = (travelL - travelR) * antiRoll;

        if (groundedL)
            gameObject.GetComponent<Rigidbody>().AddForceAtPosition(wheelL.transform.up * -antiRollForce,
                   wheelL.transform.position);
        if (groundedR)
            gameObject.GetComponent<Rigidbody>().AddForceAtPosition(wheelR.transform.up * antiRollForce,
                   wheelR.transform.position);
    }
}

