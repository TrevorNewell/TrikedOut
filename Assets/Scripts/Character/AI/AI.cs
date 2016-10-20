using UnityEngine;
using System.Collections;

public class AI : Character
{
	// Use this for initialization
	void Start ()
    {
        //Based on a difficulty setting, we can weaken the Character the AI is playing as using the variables in Car and the base class.	
	}
	
	// Update is called once per frame
	void Update ()
    {
        // Because this script inherits from Character and we've required Character to have a Move and Car script on any GameObject it's attached to, 
        // we can safely update the variables of Move within this script based on the behavior we'ved defined for NPC racers  as well as the attributes of the car.
    }
}
