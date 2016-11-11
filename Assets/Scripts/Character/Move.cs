using UnityEngine;
using System.Collections;

public class Move : MonoBehaviour
{
    private Character character;
    private Car car;
    private Rigidbody body;
    
    private float velocity = 0.0f;
    private float rotation = 0.0f;

    private int leftPedal;
    private int rightPedal;
    private float turnFactor;

    private int lastPedal;
    private float timer = 0.0f;

    private float savedVelocity = 0.0f;
    private float savedRotation = 0.0f;
    private float savedTurnFactor = 0.0f;

    public ForceMode typeOfForceToApply;
    public float decayOnCollisionBy;

    void Start()
    {
        character = gameObject.GetComponent<Player>();
        car = gameObject.GetComponent<Car>();
        body = gameObject.GetComponent<Rigidbody>();
        velocity = 0.0f;
        rotation = 0.0f;
        timer = 0.0f;
        lastPedal = 1;
    }

    // This is used when the player finishes the race
    public void SlowCharacter()
    {
        car.slowRate = car.slowRate * 3.5f;
    }

    public Move(Character c)
    {
        character = c;
        car = character.GetCar();
        body = (character as MonoBehaviour).GetComponent<Rigidbody>();
        velocity = 0.0f;
        rotation = 0.0f;
        timer = 0.0f;
    }

    // lP is only ever 0 or 1
    // rP is only ever 0 or 2
    public void SetFactors(int lP, int rP, float tF)
    {
        leftPedal = lP;
        rightPedal = rP;
        turnFactor = tF;
    }

    public void SaveMomentum()
    {
        savedVelocity = velocity;
        savedRotation = rotation;
        savedTurnFactor = turnFactor;

        velocity = 0;
        //rotation = 0; // Don't set to 0. 
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

    public void OnCollisionEnter(Collision other) 
    {
        Vector3 orthogonalVector = other.contacts[0].point - transform.position;
        float angleOfCollision = Vector3.Angle(orthogonalVector, body.velocity);
        //Debug.Log("Angle reduction:" + (decayOnCollisionBy * angleOfCollision)/60);
        //velocity -= (decayOnCollisionBy*angleOfCollision)/60;
        velocity -= car.slowRate;
    }

    public void Update()
    {
        timer += Time.deltaTime;

        //decay velocity
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
    }

    public float GetRotation()
    {
        return rotation;
    }
}
