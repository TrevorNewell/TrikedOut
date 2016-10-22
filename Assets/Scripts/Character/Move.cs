using UnityEngine;
using System.Collections;

public class Move
{
    private Vector3 position;
    private Vector3 velocity;
    private Character character;
    private Car car;
    private Rigidbody body;

    public Move(Character c)
    {
        character = c;
        car = character.GetCar();
        position = character.transform.position; // might not be needed
        body = character.GetComponent<Rigidbody>();
        velocity = Vector3.zero;
    }

    public void SetFactors(bool lP, bool rP, float tF)
    {

    }
}
