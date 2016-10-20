using UnityEngine;
using System.Collections;

public class Player : Character
{
	// Use this for initialization
	void Start ()
    {
	
	}
	
	// Update is called once per frame
	void Update ()
    {
        // Because this script inherits from Character and we've required Character to have a Move and Car script on any GameObject it's attached to, 
        // we can safely update the variables of Move within this script based on the Input coming from the user as well as the attributes of the car.
	}
}
