using UnityEngine;
using System.Collections;
using UnityStandardAssets.Vehicles.Car;
using System;

public class Move : MonoBehaviour
{
    public ArcadeTrikeController trikeController; // the car controller we want to use, this is at the root of one of our trikes.
    public float cameraSnapAngle;

    private Character character;
    //private Car car;
    private Rigidbody body;

    [SerializeField] private bool fadeToZero = true;
    [Range(0,1)][SerializeField] private float driftStrength = 0.5f;
    //[Range(10, 100)][SerializeField] private float rotationRate = 15; // The bigger the number the slower the rotation
    [SerializeField] private float driftTime = 0.5f; // If leftPedal or rightPedal are held for this amount of time, begin drifting
    [SerializeField] private float brakeTime = 0.5f; // If leftPedal and rightPedal are held for this amount of time, begin braking
    [SerializeField] private float pedalingTime = 1.0f; // If leftPedal was pressed after rightPedal within this amount of time, begin accelerating


    private float velocity = 0.0f;
    private float rotation = 0.0f;

    [Header("Visible to Debug")]

    [SerializeField] private float driftCounter = 0.0f;
    [SerializeField] private float brakeCounter = 0.0f;
    [SerializeField] private float timeToPedalLeft = 0.0f;
    [SerializeField] private float timeToPedalRight = 0.0f;

    [SerializeField] private bool leftPedal; // Left pedal is being pressed
    [SerializeField] private bool rightPedal; // Right pedal is being pressed
    [SerializeField] private float turnFactor;
    [SerializeField] private float cameraFactor;

    [SerializeField] private bool lastPedalLeft = false; // Last pedal pressed was the left pedal
    [SerializeField] private bool lastPedalRight = false; // Last pedal pressed was the right pedal

    [SerializeField] private bool isDriftingLeft = false; // We are drifting left
    [SerializeField] private bool isDriftingRight = false; // We are drifting right
    [SerializeField] private bool isBraking = false; // We are braking
    [SerializeField] private bool isPedaling = false; // We are pedaling

    bool timePedalingLeft = false; // Once true you have "pedalingCounter" seconds to press right pedal
    bool timePedalingRight = false; // Once true you have "pedalingCounter" seconds to press left pedal

    private float savedVelocity = 0.0f;
    private float savedRotation = 0.0f;
    private float savedTurnFactor = 0.0f;

    private float currentRotation = 0.0f;

    void Start()
    {
        character = gameObject.GetComponent<Player>();
        //car = gameObject.GetComponent<Car>();
        body = gameObject.GetComponent<Rigidbody>();
        trikeController = gameObject.GetComponentInChildren<ArcadeTrikeController>();
    }

    public float GetSpeed()
    {
        return trikeController.CurrentSpeed;
    }

    // This is used when the player finishes the race
    public void SlowCharacter()
    {
        //car.slowRate = car.slowRate * 3.5f;
    }

    public Move(Character c)
    {
        character = c;
        //car = character.GetCar();
        body = (character as MonoBehaviour).GetComponent<Rigidbody>();
    }

    // lP is only ever 0 or 1
    // rP is only ever 0 or 2
    public void SetFactors(bool lP, bool rP, float tF, float cf)
    {
        leftPedal = lP;
        rightPedal = rP;
        turnFactor = tF;
        cameraFactor = cf;
    }

    // Will need to update this (and RestoreMomentum) to account for the wheel collider.  Will do it later though, pft.
    public void SaveMomentum()
    {
        savedVelocity = velocity;
        savedRotation = rotation;
        savedTurnFactor = turnFactor;

        velocity = 0;
        turnFactor = 0;
        //gameObject.GetComponent<Rigidbody>().isKinematic = true;
    }

    public void RestoreMomentum()
    {
        //gameObject.GetComponent<Rigidbody>().isKinematic = false;
        velocity = savedVelocity;
        rotation = savedRotation;
        turnFactor = savedTurnFactor;
    }

    // This should be deprecated - Collision handling for slowing down the car is now handled by the wheel colliders
    public void OnCollisionEnter(Collision other)
    {
        /*Vector3 orthogonalVector = other.contacts[0].point - transform.position;
        float angleOfCollision = Vector3.Angle(orthogonalVector, body.velocity);
        //Debug.Log("Angle reduction:" + (decayOnCollisionBy * angleOfCollision)/60);
        //velocity -= (decayOnCollisionBy*angleOfCollision)/60;
        velocity -= car.slowRate;
        */
    }

    public void Update()
    {
        GameObject cam = GameObject.Find("CameraBoom" + GetComponent<Player>().prefix.Substring(1, 1));
        //print(cameraFactor * cameraSnapAngle);
        cam.transform.localRotation = Quaternion.Euler(new Vector3(cam.transform.localRotation.eulerAngles.x, 
            /*cam.transform.localRotation.eulerAngles.y + cameraFactor * 50f * Time.deltaTime*/cameraFactor * cameraSnapAngle, cam.transform.localRotation.eulerAngles.z));
        // Both pedals were pressed.
        if (leftPedal && rightPedal)
        {
            //Debug.Log("Start count to Braking");
            brakeCounter += Time.fixedDeltaTime;

            driftCounter = 0;
            timeToPedalLeft = 0;
            timeToPedalRight = 0;
            timePedalingLeft = false;
            timePedalingRight = false;

            isPedaling = false;
        }
        // Left pedal pressed
        else if (leftPedal)
        {
            if (timeToPedalLeft <= pedalingTime && timePedalingRight && lastPedalRight)
            {
                isPedaling = true;
            }


            //Debug.Log("Start count to LeftPedal Drift");

            if (lastPedalLeft)
            {
                driftCounter += Time.fixedDeltaTime;
            }
            else
            {
                driftCounter = 0;
            }

            lastPedalLeft = true;
            lastPedalRight = false;

            brakeCounter = 0;
            timeToPedalRight = 0;
            timeToPedalLeft = 0;
            timePedalingLeft = true;
            timePedalingRight = false;
        }
        // Right pedal pressed
        else if (rightPedal)
        {
            if (timeToPedalRight <= pedalingTime && timePedalingLeft && lastPedalLeft)
            {
                isPedaling = true;
            }

            brakeCounter = 0;

            //Debug.Log("Start count to RightPedal Drift");

            if (lastPedalRight)
            {
                driftCounter += Time.fixedDeltaTime;
            }
            else
            {
                driftCounter = 0;
            }

            lastPedalRight = true;
            lastPedalLeft = false;

            brakeCounter = 0;
            timeToPedalLeft = 0;
            timeToPedalRight = 0;
            timePedalingRight = true;
            timePedalingLeft = false;
        }
        else
        {
            // We can safely set both of those to 0, but not pedaling.  Pedaling allows for a delay between button presses.
            brakeCounter = 0;
            //pedalingCounter = 0;
            driftCounter = 0;
        }

        // Both pedals were held for "brakeTime" seconds.  Let's brake.
        if (brakeCounter >= brakeTime)
        {
            Debug.Log("Begin Braking");

            isBraking = true;
        }
        else
        {
            isBraking = false;
        }

        // For drifting, ensure we're going a minimum speed
        // Left pedal was held for "driftTime" seconds.  Let's drift left
        if (driftCounter >= driftTime && lastPedalLeft)
        {
            Debug.Log("Begin Drifting Left");

            isDriftingLeft = true;
            isPedaling = false;
        }
        else
        {
            isDriftingLeft = false;
        }

        // Right pedal was held for "driftTime" seconds. Let's drift right
        if (driftCounter >= driftTime && lastPedalRight)
        {
            Debug.Log("Begin Drifting Right");

            isDriftingRight = true;
            isPedaling = false;
        }
        else
        {
            isDriftingRight = false;
        }

        // Check LastPedal and start counting
        if (timePedalingRight)
        {
            timeToPedalLeft += Time.fixedDeltaTime;
        }
        if (timePedalingLeft)
        {
            timeToPedalRight += Time.fixedDeltaTime;
        }

        if (timeToPedalLeft >= pedalingTime || timeToPedalRight >= pedalingTime)
        {
            isPedaling = false;
            timePedalingLeft = false;
            timePedalingRight = false;
            timeToPedalLeft = 0;
            timeToPedalRight = 0;
        }

        float steering = turnFactor;  // This is between - 1 and 1
        float acceleration = (isPedaling == true) ? 1 : 0;  // This is between - 1 and 1 as well, and if we aren't pedaling we can be slowing down i.e. set to something other than 0
        float reverse = (isBraking == true) ? -1 : 0;
        float drifting = 0.0f;
        if (isDriftingLeft) drifting = -driftStrength; // We don't want a full 1
        if (isDriftingRight) drifting = driftStrength;

        // This adds angles to the rotation incrementally instead of simply setting the angles.  Much smoother.
        // For some reason, when I put 10 in a variable, it gives me an error :/ 10 is good though :)
        currentRotation += (steering / 10);

        if (steering == 0 && fadeToZero) currentRotation -= currentRotation/10;

        if (currentRotation < -1) currentRotation = -1;
        if (currentRotation > 1) currentRotation = 1;

        //Debug.Log("Rotate: " + currentRotation + " Accelerate: " + acceleration +  " Drift: " + drifting);
        // Move our trike
        if (isBraking) trikeController.Move(currentRotation, reverse, drifting);
        //else (isPedaling) trikeController.Move(currentRotation, acceleration, drifting); // This is bad, we need to be able to rotate our handle bars even if we aren't "pedaling"
        //else if (isDriftingLeft) trikeController.Move(-driftRotation, driftAcceleration, drifting);
        //else if (isDriftingRight) trikeController.Move(driftRotation, driftAcceleration, drifting);
        else trikeController.Move(currentRotation, acceleration, drifting); // This is good, we can rotate when not pedaling

        // For the commented else ifs above, the driftRotation and driftAcceleration could just be between 0 and 2, and then scale the turn and acceleration in the ArcadeTrikeController.
        // For example,  say driftRotation was 1.5.  In ArcadeTrikeController, this means we can turn 50% faster than normal.  0.5 would mean we turn 50% slower.  
        // Implemented this way, the third variable just acts like a bool.  If it isn't 0, we're drifting, so scale turn and acceleration within ArcadeTrikeController.

        // Make sure any variable you modify within ArcadeTrikeController is restored to it's original value if we are no longer drifting (groundedDrag, turnStrength, forwardAcceleration)

    }

    public float GetRotation()
    {
        return rotation;
    }
}
