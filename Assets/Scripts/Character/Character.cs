using UnityEngine;
using System.Collections;
//[RequireComponent(typeof(Car))]
// Note, you won't want to attach this script to the gameObject.  You will want to attach a script that implements this one
public interface Character
{
    /* These are variables that every Character should have.
     *      GameObject characterModel;
     *      Move ourMove;
     *      Car ourCar;
     * 
     *      int health;
     *      int itemCount;
     *      int sugarTolerance;
     * 
     *      GameObject item;
     *      GameObject weapon;
     * 
     *      GameObject Super;
     * */

    void Start ();

    void Update ();

    Car GetCar ();

    Move GetMove();

    int GetID();
}
