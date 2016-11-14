// NO LONGER USE THIS, HERE FOR REFERENCE ONLY 
using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TrikeController : MonoBehaviour
{
    public float xRotOfHandle = 0.0f;

    public bool applyDownForce; // Whether or not to apply a down force based on the current velocity
    public float downForce = 100.0f; // How much down force to apply
    public GameObject backWheels; // The back wheels of our trike
    public GameObject frontWheel; // The front wheels of our trike
    public GameObject handleBar; // The handlebar of our trike.  It's important to note, that this should be a game object with a pivot that rotates the handlebar in a natural fashion.
    public List<AxleInfoDual> dualAxleInfos; // the information about each individual axle
    public List<AxleInfoSingle> singleAxleInfos; // the information about each individual axle
    public float maxMotorTorque = 300; // maximum torque the motor can apply to wheel
    public float maxSteeringAngle = 45; // maximum steer angle the wheel can have
    public float antiRollFactor = 10.0f; // Balances force on the wheels when turning

    public bool manualCOM; // Whether to use Unitys calculated center of mass (which is based on the volume of the colliders) or our custom COM
    public Vector3 centerOfMass;

    private float originalX; // Rotation of X on Trike handlebar.  Saving this allows us to rotate at a natural angle (for a trike)

    public void Start()
    {
        if (manualCOM) gameObject.GetComponent<Rigidbody>().centerOfMass = centerOfMass;

        //handleBar.AddComponent<HandleRotation>();
        //handleBar.GetComponent<HandleRotation>().maxAngle = maxSteeringAngle;

        /*
        foreach (AxleInfoDual axleInfo in dualAxleInfos)
        {
            axleInfo.antiRoll = gameObject.AddComponent<AntiRoll>();
            axleInfo.antiRoll.wheelL = axleInfo.leftWheel;
            axleInfo.antiRoll.wheelR = axleInfo.rightWheel;
            axleInfo.antiRoll.antiRoll = antiRollFactor;
        }
        */

        /*
        foreach (AxleInfoSingle axleInfo in singleAxleInfos)
        {
            axleInfo.antiRoll = gameObject.AddComponent<AntiRoll>();
            axleInfo.antiRoll.wheelL = axleInfo.frontWheelLeft;
            axleInfo.antiRoll.wheelR = axleInfo.frontWheelRight;
            axleInfo.antiRoll.antiRoll = antiRollFactor;
        }
        */
        
    }

    public void ApplyLocalPositionToVisuals(WheelCollider collider, bool isFront)
    {
        Vector3 position;
        Quaternion rotation;
        collider.GetWorldPose(out position, out rotation);

        //visualWheel.transform.position = position;  This is for the regular cube.  Script's been modified for the trike
        //visualWheel.transform.rotation = rotation;

        if (isFront)
        {
            frontWheel.transform.position = position;
            frontWheel.transform.rotation = rotation;
            handleBar.transform.localRotation = Quaternion.Euler(xRotOfHandle, collider.steerAngle, 0);
        }
        else
        {
            backWheels.transform.rotation = rotation;
        }
    }

    public void FixedUpdate()
    {
        if (!manualCOM) centerOfMass = gameObject.GetComponent<Rigidbody>().centerOfMass;
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

            // Only called on leftWheel because that will apply the proper rotation for our object.
            ApplyLocalPositionToVisuals(axleInfo.leftWheel, false);
            //ApplyLocalPositionToVisuals(axleInfo.rightWheel, false);
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

            ApplyLocalPositionToVisuals(axleInfo.frontWheel, true);
        }

        // Apply a "down force" to prevent our vehicle from flipping at high speeds.
        if (applyDownForce)
        {
            float lift = (-1) * downForce * gameObject.GetComponent<Rigidbody>().velocity.sqrMagnitude;
            gameObject.GetComponent<Rigidbody>().AddForceAtPosition(lift * transform.up, transform.position);
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
    //public GameObject handleBarPivot;
}

[System.Serializable]
public class AxleInfoSingle
{
    public WheelCollider frontWheel;
    public bool motor; // is this wheel attached to motor?
    public bool steering; // does this wheel apply steer angle?
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

        float antiRollForce = (travelL - travelR) * antiRoll * 5000;

        if (groundedL)
        {
            gameObject.GetComponentInParent<Rigidbody>().AddForceAtPosition(wheelL.transform.up * -antiRollForce,
                   wheelL.transform.position);
        }
        if (groundedR)
        {
            gameObject.GetComponentInParent<Rigidbody>().AddForceAtPosition(wheelR.transform.up * antiRollForce,
                   wheelR.transform.position);
        }
    }
}

