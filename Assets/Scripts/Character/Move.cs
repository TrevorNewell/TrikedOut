using UnityEngine;
using System.Collections;

public class Move
{
    private Vector3 position;
    private Vector3 velocity;
    private Character character;
    private Car car;
    private Rigidbody body;

    private int leftPedal;
    private int rightPedal;
    private float turnFactor;

    private int lastPedal;
    private float timer;

    public Move(Character c)
    {
        character = c;
        car = character.GetCar();
        position = character.transform.position; // might not be needed
        body = character.GetComponent<Rigidbody>();
        velocity = Vector3.zero;
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

        //turn character and velocity

        if (leftPedal + rightPedal != 0 && timer > car.pedalDelay)
        {
            int nextPedal = rightPedal;
            if (leftPedal + lastPedal == 3) nextPedal = leftPedal;

            timer = 0.0f;

            //add velocity
        }
    }
}
