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

    void Start()
    {
        character = gameObject.GetComponent<Player>();
        car = gameObject.GetComponent<Car>();
        body = gameObject.GetComponent<Rigidbody>();
        velocity = 0.0f;
        rotation = 0.0f;
        timer = 0.0f;
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

    public void Update()
    {
        //Debug.Log("Velocity Before: " + velocity);

        timer += Time.deltaTime;

        //decay velocity
        if (velocity > 0.0f) velocity -= car.slowRate * Time.deltaTime;
        else velocity = 0.0f;


        if (leftPedal + rightPedal != 0)
        {
            Debug.Log("Left: " + leftPedal + " Right: " + rightPedal);

            //Debug.Log("In First Check.");

            int nextPedal = 0;

            if (rightPedal + lastPedal == 3) nextPedal = 1;
            else if (leftPedal + lastPedal == 3) nextPedal = 2;



            if (leftPedal != 0 && rightPedal == 0 && lastPedal == 2)
            {
                //Debug.Log("Left Pedal Pressed");
                //nextPedal = 1;

            }
            else if (leftPedal == 0 && rightPedal != 0 && lastPedal == 1)
            {
                //Debug.Log("Right Pedal Pressed");
            }

            //Debug.Log("Next Pedal: " + nextPedal + " Last Pedal: " + lastPedal);

            if (nextPedal != 0)
            {
                //Debug.Log("In Second Check.");

                lastPedal = nextPedal;
                float modifier = timer / car.pedalDelay;
                if (modifier > 1.0f) modifier = 1.0f;
                timer = 0.0f;

                //add velocity
                velocity += car.acceleration * modifier;

                if (velocity > car.maxSpeed) velocity = (float)car.maxSpeed;
            }

            if (leftPedal != 0 && rightPedal == 0)
            {
                //Debug.Log("Left Pedal Pressed");
                lastPedal = 1;

            }
            else if (leftPedal == 0 && rightPedal != 0)
            {
                //Debug.Log("Right Pedal Pressed");
                lastPedal = 2;
            }
        }

        //Debug.Log("Velocity: " + velocity);

        //turn character and velocity
        rotation += turnFactor;
        gameObject.transform.eulerAngles = new Vector3(0, rotation, 0);
        body.velocity = new Vector3(velocity * Mathf.Sin(Mathf.Deg2Rad * rotation), 0.0f, velocity * Mathf.Cos(Mathf.Deg2Rad * rotation));
    }
}
