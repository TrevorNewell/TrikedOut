using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour, Character
{
    protected Move ourMove;
    protected Car ourCar;

    // Status Effects
    public int health = 100; // When 0, the character dies, drops an item/weapon, then respawns shortly after at last checkpoint or close to where it was killed.
    public int itemCount = 2; // Default of 2.  Can control how many items a player can hold at once.  Should be between like 1 and 3.  Tapping RB or something can cycle through your items.  Weapon is always equipped?  LB & RB activates super?      
    public int sugarTolerance; // Possible variable.  With items you can eat for a speed boost, the child gets a little sicker each time.  When he hits his tolerance he can't eat anymore items and must throw them instead.

    // Other Status effects?

    // Not sure if we want all these, but can modify as needed.
    public GameObject item; // An item, such as a cotton candy that's thrown at a player or can be eaten for a speed boost fueled by the sugar rush
    public GameObject weapon; // Has ammo that can be collected from killing other players, from crates, or at the pit stop (or regenerates).  OR, like the hierarchy says, it would be collected and one the ammo's gone it's gone.  
                              // I do suggest, however, when you kill a player and they happen to drop their weapon, depending on the strength of the weapon, you can have it restocked with ammo for the player who killed it, or retain the amount of ammo it had on death.
    public GameObject super; // Part of the loadout?  Charge this by pedaling.  Should be used sparingly as it takes a while to charge and is pretty strong (it'd be as powerful as a blue shell)
                  
    // Use this for initialization
    public void Start ()
    {
        //Eventually this car will be a part of a prefab and will be pulled as a GetComponent<Car>() from that GameObject
        ourCar = new Car();//gameObject.GetComponent<Car>();
        ourMove = new Move(this);
    }
	
	// Update is called once per frame
	public void Update ()
    {
        ourMove.Update();
        // Because this script inherits from Character and we've required Character to have a Move and Car script on any GameObject it's attached to, 
        // we can safely update the variables of Move within this script based on the Input coming from the user as well as the attributes of the car.
	}

    public Car GetCar ()
    {
        return ourCar;
    }

    public Move GetMove()
    {
        return ourMove;
    }
}
