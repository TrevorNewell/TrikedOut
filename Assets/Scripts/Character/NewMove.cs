using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

public class NewMove : MonoBehaviour
{
    //The way this system is set up is that each pedal has a power level determined by how long ago you last pedalled
    public float timeUntilPowerFalloff = 0.2f; //How long you have to pedal again before your next pedal starts losing power
    public float powerFalloffRate = 0.1f; //How much power you lost each second after your initial max power period
    public float minimumPowerLevel = 0.1f; //The least amount of power a pedal can be worth
    public float slowFactor = 0.08f; //How much you slow by if you stop pedalling
    public float maxSpeed = 1f; //Percentage from 0 to 1 of controllers max speed. Greater than 1 will inflate the controller's max speed and is not recommended
    public float maxPowerPedalsToFull = 20f; //The number of max power pedals needed to reach full speed.
    public float timeUntilSlow = 1f; //How long you can coast before losing speed at any point
    public float timeUntilSlowFullSpeed = 5f; //How long you can coast before losing speed at max speed
    public float brakeSpeed = 0.5f; //How fast you break, also how fast you accelerate when going backwards
    public float maxReverseSpeed = -0.3f; //How fast can we go backwards;

    private RigidbodyFirstPersonController rbfpc; //The controller
    private float currentPowerLevel = 1f; //Power level is percentile 0 to 1
    private float currentSpeed = 0f; //Speed is percentile 0 to 1
    private float turnFactor = 0f; //Which direction and how hard we are turning
    private bool lastPedalLeft = false; //Was the last pedal used the left pedal
    private float timeSinceLastPedal = 0f; //How long ago was the last pedal
    private bool braking = false; //Should we start slowing down

    public void SetFactors(bool leftPedal, bool rightPedal)
    {
        if (leftPedal && rightPedal)
        {
            //brake
            braking = true;
        }
        else
        {
            braking = false;
            ClampLessThan(ref currentSpeed, 0f);
            if (leftPedal && !lastPedalLeft || rightPedal && lastPedalLeft)
            {
                lastPedalLeft = !lastPedalLeft;
                timeSinceLastPedal = 0f;
                currentSpeed += currentPowerLevel / maxPowerPedalsToFull;
                ClampGreaterThan(ref currentSpeed, maxSpeed);
                currentPowerLevel = 1f;
            }
        }
    }

    //clamps a value v to c if v is greater than c
    void ClampGreaterThan(ref float v, float c)
    {
        if (v > c) v = c;
    } 
    //clamps a value v to c if v is less than c
    void ClampLessThan(ref float v, float c)
    {
        if (v < c) v = c;
    }

    void SlowDown()
    {
        currentSpeed -= slowFactor * Time.deltaTime;
        ClampLessThan(ref currentSpeed, 0f);
    }

    void Brake()
    {
        currentSpeed -= brakeSpeed * Time.deltaTime;
        ClampLessThan(ref currentSpeed, maxReverseSpeed);
    }

    void PowerDown()
    {
        currentPowerLevel -= powerFalloffRate * Time.deltaTime;
        ClampLessThan(ref currentPowerLevel, minimumPowerLevel);
    }

    // Use this for initialization
    void Start ()
    {
        rbfpc = GetComponent<RigidbodyFirstPersonController>();
    }

    void Update()
    {
        timeSinceLastPedal += Time.deltaTime;
        //print("CURRENT SPEED " + currentSpeed + " CURRENT POWER LEVEL " + currentPowerLevel);

        if (timeSinceLastPedal > timeUntilPowerFalloff && currentSpeed != 0f)
        {
            //start powering down
            PowerDown();
        }

        if (braking)
        {
            //brake
            Brake();
        }
        else if ((timeSinceLastPedal > timeUntilSlow && currentSpeed < 1.0f) ||
                 (timeSinceLastPedal > timeUntilSlowFullSpeed && currentSpeed >= 1.0))
        {
            //start slowing down
            SlowDown();
        }

        //tell the rbfpc our speed
        rbfpc.percentOfMaxSpeed = currentSpeed;
    }
}
