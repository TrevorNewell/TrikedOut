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
    private string prefix;

	// Use this for initialization
	void Start ()
    {
        player = gameObject.GetComponent<Player>();
        move = gameObject.GetComponent<Move>();
        prefix = player.prefix;
    }
	
	// Update is called once per frame
	void Update ()
    {
        if (!StateManager.instance.isPaused)
        {
            int leftPedal = (Input.GetAxis(prefix + "_LeftTrigger") == 1) ? 1 : 0;
            int rightPedal = (Input.GetAxis(prefix + "_RightTrigger") == 1) ? 2 : 0;
            float turnFactor = Input.GetAxis(prefix + "_LeftJoystickX");

            Debug.Log("Player: " + prefix + " LeftPedal: " + leftPedal + " RightPedal: " + rightPedal + " TurnFactor: " + turnFactor);

            move.SetFactors(leftPedal, rightPedal, turnFactor);
        }
	}
}
