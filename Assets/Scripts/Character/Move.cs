using UnityEngine;
using System.Collections;
using UnityStandardAssets.Vehicles.Car;

public class Move : MonoBehaviour
{
    public CarController carController; // the car controller we want to use, this is at the root of one of our trikes.

    private Character character;
    //private Car car;
    private Rigidbody body;

    [Range(0,1)][SerializeField] private float driftStrength;
    [SerializeField]
    private float driftTime = 0.5f; // If leftPedal or rightPedal are held for this amount of time, begin drifting
    [SerializeField]
    private float brakeTime = 0.5f; // If leftPedal and rightPedal are held for this amount of time, begin braking
    [SerializeField]
    private float pedalingTime = 1.0f; // If leftPedal was pressed after rightPedal within this amount of time, begin accelerating

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

    void Start()
    {
        character = gameObject.GetComponent<Player>();
        //car = gameObject.GetComponent<Car>();
        body = gameObject.GetComponent<Rigidbody>();
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
    public void SetFactors(bool lP, bool rP, float tF)
    {
        leftPedal = lP;
        rightPedal = rP;
        turnFactor = tF;
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

    public void FixedUpdate()
    {
        // Both pedals were pressed.
        if (leftPedal && rightPedal)
        {
            Debug.Log("Start count to Braking");
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


            Debug.Log("Start count to LeftPedal Drift");

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

            Debug.Log("Start count to RightPedal Drift");

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
        if (isDriftingLeft) drifting = driftStrength; // We don't want a full 1
        if (isDriftingRight) drifting = -driftStrength;
        
        /*
        if (isPedaling)
        {
            carController.Move(steering, acceleration, acceleration, drifting);
        }
        else if (isBraking)
        {
            carController.Move(steering, reverse, reverse, drifting);
        }
        else
        {
            carController.Move(steering, acceleration, reverse, drifting);
        }
        */

        carController.Move(steering, acceleration, reverse, drifting);


        /* Old Implementation
        timer += Time.deltaTime;

        //decay velocity and prevent it from becoming less than 0
        if (velocity > 0.0f) velocity -= car.slowRate * Time.deltaTime;
        else velocity = 0.0f;

        if (leftPedal + rightPedal != 0)
        {
            int nextPedal = 0;

            if (rightPedal + lastPedal == 3) nextPedal = 2;
            else if (leftPedal + lastPedal == 3) nextPedal = 1;

            if (nextPedal != 0)
            {
                lastPedal = nextPedal;
                float modifier = timer / car.pedalDelay;
                if (modifier > 1.0f) modifier = 1.0f;
                timer = 0.0f;

                //add velocity
                velocity += car.acceleration * modifier;

                if (velocity > car.maxSpeed) velocity = (float)car.maxSpeed;
            }

            leftPedal = 0;
            rightPedal = 0;
        }

        //turn character and velocity
        rotation += turnFactor;
        //print(rotation);
        if (rotation > 359) rotation -= 360;
        else if (rotation < 0) rotation += 360;
        gameObject.transform.eulerAngles = new Vector3(0, rotation, 0);

        //Debug.Log("Velocity: " + velocity);

        //body.AddForce(new Vector3(velocity * Mathf.Sin(Mathf.Deg2Rad * rotation), 0.0f, velocity * Mathf.Cos(Mathf.Deg2Rad * rotation)), typeOfForceToApply);
        body.velocity = new Vector3(velocity * Mathf.Sin(Mathf.Deg2Rad * rotation), 0.0f, velocity * Mathf.Cos(Mathf.Deg2Rad * rotation));
        */
    }

    public float GetRotation()
    {
        return rotation;
    }
}
