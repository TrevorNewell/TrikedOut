using UnityEngine;
using System.Collections;

public class PlayerAttributes : MonoBehaviour
{
    public int playerHealth = 100;
    
	// Use this for initialization
	void Start ()
    {
	
	}
	
    void OnCollisionEnter(Collision collision)
    {
        //print("Collided with" + collision.gameObject.name);

        // TODO, add detection for collision with enemy and enemy projectiles.
    }

	// Update is called once per frame
	void Update ()
    {
	
	}
}
