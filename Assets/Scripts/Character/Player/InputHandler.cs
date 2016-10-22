using UnityEngine;
using System.Collections;

public class InputHandler : MonoBehaviour
{
    /*
     * THis class is required to be a component of all player objects. 
     * It will send messages to the player's move class, which will move the player
     * The Move class will not move the player until the Update function is called, which the Player will do
     **/
    private Player player;
    private Move move;

	// Use this for initialization
	void Start ()
    {
        player = GetComponent<Player>();
        move = player.GetMove();
	}
	
	// Update is called once per frame
	void Update ()
    {
        bool leftPedal = Input.GetAxis("LeftTrigger") == 1;
        bool rightPedal = Input.GetAxis("RightTrigger") == 1;
        float turnFactor = Input.GetAxis("LeftJoystickX");

        move.SetFactors(leftPedal, rightPedal, turnFactor);
	}
}
