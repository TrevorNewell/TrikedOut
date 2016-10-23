using UnityEngine;
using System.Collections;

public class Move
{
    private Character character;
    private Car car;
    private Rigidbody body;
    
    private float velocity;
    private float rotation;

    private int leftPedal;
    private int rightPedal;
    private float turnFactor;

    private int lastPedal;
    private float timer;

    public Move(Character c)
    {
        character = c;
        car = character.GetCar();
        body = character.GetComponent<Rigidbody>();
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
        timer += Time.deltaTime;

        //decay velocity
        if (velocity > 0.0f) velocity -= car.slowRate * Time.deltaTime;
        else velocity = 0.0f;

        if (leftPedal + rightPedal != 0 && timer > car.pedalDelay)
        {
            int nextPedal = rightPedal;
            if (leftPedal + lastPedal == 3) nextPedal = leftPedal;

            lastPedal = nextPedal;
            timer = 0.0f;

            //add velocity
            velocity += car.acceleration;
        }

        //turn character and velocity
        rotation += turnFactor;
        character.transform.eulerAngles = new Vector3(0, rotation, 0);
        body.velocity = new Vector3(velocity * Mathf.Sin(Mathf.Deg2Rad * rotation), 0.0f, velocity * Mathf.Cos(Mathf.Deg2Rad * rotation));
    }
}
