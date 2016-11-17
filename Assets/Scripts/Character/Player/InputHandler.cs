using UnityEngine;
using XboxCtrlrInput;
using System.Collections.Generic;

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
    private XboxController playerNumber;
    private bool useController;
    private Dictionary<string, XboxAxis> xba;
    private Dictionary<string, XboxButton> xbb;
    private Dictionary<string, KeyCode> kbc;

    // Use this for initialization
    void Start()
    {
        player = gameObject.GetComponent<Player>();
        move = gameObject.GetComponent<Move>();
        prefix = player.prefix;

        switch (prefix)
        {
            case "P1":
                playerNumber = XboxController.First;
                break;
            case "P2":
                playerNumber = XboxController.Second;
                break;
            case "P3":
                playerNumber = XboxController.Third;
                break;
            case "P4":
                playerNumber = XboxController.Fourth;
                break;
        }
    }

    public void ReceiveDefinitions(bool uc, Dictionary<string, XboxAxis> xa, Dictionary<string, XboxButton> xb, Dictionary<string, KeyCode> kb)
    {
        useController = uc;
        xba = xa;
        xbb = xb;
        kbc = kb;
    }

    // Update is called once per frame
    void Update()
    {
        if (!StateManager.instance.isPaused)
        {
            bool leftPedal;
            bool rightPedal;
            float turnFactor;
            float forward;
            bool fire;
            bool ceaseFire;
            bool switchWeapon;

            if (useController)
            {
                leftPedal = (XCI.GetAxis(xba["leftPedal"], playerNumber) == 1) ? true : false;
                rightPedal = (XCI.GetAxis(xba["rightPedal"], playerNumber) == 1) ? true : false;
                turnFactor = XCI.GetAxis(xba["steerX"], playerNumber);
                //forward = XCI.GetAxis(xba["steerY"], playerNumber);
                fire = XCI.GetButtonDown(xbb["activateWeapon"], playerNumber);
                ceaseFire = XCI.GetButtonUp(xbb["activateWeapon"], playerNumber);
                switchWeapon = XCI.GetButtonUp(xbb["switchWeapon"], playerNumber);
            }
            else
            {
                leftPedal = (Input.GetKeyDown(kbc["leftPedal"]) == true) ? true : false;
                rightPedal = (Input.GetKeyDown(kbc["rightPedal"]) == true) ? true : false;
                turnFactor = (Input.GetKey(kbc["steerX"]) == true) ? -1 : (Input.GetKey(kbc["steerY"]) == true) ? 1 : 0;
                fire = Input.GetKeyDown(kbc["activateWeapon"]);
                //forward = (Input.GetKey(kbc["steerY"]) == true) ? 1 : 0;
                ceaseFire = Input.GetKeyUp(kbc["activateWeapon"]);
                switchWeapon = Input.GetKeyDown(kbc["switchWeapon"]);
            }

            //Debug.Log("Player: " + prefix + " LeftPedal: " + leftPedal + " RightPedal: " + rightPedal + " TurnFactor: " + turnFactor);

            move.SetFactors(leftPedal, rightPedal, turnFactor);//, forward);
            if (fire) player.FireWeapon();
            else if (ceaseFire) player.CeaseFire();
            if (switchWeapon) player.SwitchWeapon();
        }
    }
}