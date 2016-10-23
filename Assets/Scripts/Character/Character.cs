using UnityEngine;
using System.Collections;
//[RequireComponent(typeof(Car))]
// Note, you won't want to attach this script to the gameObject.  You will want to attach a script that inherits from this one
public class Character : MonoBehaviour
{
    public GameObject characterModel; // Should the Character mesh be included here as a GameObject?
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
	protected void Start ()
    {
        // Force the game object this is attached to to require the move script as well as the car script.  I remember there's a way to add a script which then causes other components to be automatically added.. 
        // I can find out later or you can try if I don't get around to it before then.  Keep this in mind when referring to other scripts where I've made a similar note.  I don't think it'sAddComponent, you can do it so it does it from the editor

        //Eventually this car will be a part of a prefab and will be pulled as a GetComponent<Car>() from that GameObject
        ourCar = new Car();//gameObject.GetComponent<Car>();
        ourMove = new Move(this);
    }

    // Update is called once per frame
    void Update ()
    {
	    // Update is based off the respective scripts that inherit from this class.  There may be some things that need updated regardless of which class inherits it, but the two classes that inherit this script currently (AI and Player) vary wildly
	}

    public Car GetCar()
    {
        return ourCar;
    }

    public Move GetMove()
    {
        return ourMove;
    }
}
