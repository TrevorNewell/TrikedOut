using UnityEngine;
using System.Collections;

public class Car
{
    public GameObject carModel; // Should the Car mesh be included here as a GameObject?

    public double maxSpeed = 20;
    private bool isPedaling = false; // Based on our variable stated directly below, if the left trigger is pressed within the specified time after the right trigger was pressed, this is true.  Else false
    public float acceleration = 0.6f;
    public float turnRate = 0.5f;
    public float slowRate = 0.1f;
    public float pedalDelay = 0.5;

    [Range(0, 1)]private float slowResistance = 0; // This is a possible variable.  Based on the wheels of the car it can be more resistant towards slowing effects.  
    // For instance a hoverTrike wouldn't make contact with the ground so marshmallows would have no effect on the speed of that car.  1 indicates 100% resistant to slows.  0 indicates slows act as normal.

	// Use this for initialization
	void Start ()
    {
        // How to disable attaching this script to a GameObject if a Character script isn't present?
    }
}
