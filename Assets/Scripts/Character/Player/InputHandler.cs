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
    private float currentTime;
    private float delay = 0.2f;

    // Use this for initialization
    void Start()
    {
        player = gameObject.GetComponent<Player>();
        move = gameObject.GetComponent<Move>();
        prefix = player.prefix;
        currentTime = 0f;

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
            float cameraFactor;
            bool fire;
            bool ceaseFire;
            bool switchWeapon;
            bool pause;

            if (useController)
            {
                leftPedal = (XCI.GetAxis(xba["leftPedal"], playerNumber) == 1) ? true : false;
                rightPedal = (XCI.GetAxis(xba["rightPedal"], playerNumber) == 1) ? true : false;
                turnFactor = XCI.GetAxis(xba["steerX"], playerNumber);
                cameraFactor = XCI.GetAxis(xba["cameraX"], playerNumber);
                fire = XCI.GetButtonDown(xbb["activateWeapon"], playerNumber);
                ceaseFire = XCI.GetButtonUp(xbb["activateWeapon"], playerNumber);
                switchWeapon = XCI.GetButtonDown(xbb["switchWeapon"], playerNumber);
                pause = XCI.GetButtonDown(xbb["pause"], playerNumber);
            }
            else
            {
                leftPedal = (Input.GetKeyDown(kbc["leftPedal"]) == true) ? true : false;
                rightPedal = (Input.GetKeyDown(kbc["rightPedal"]) == true) ? true : false;
                turnFactor = (Input.GetKey(kbc["steerX"]) == true) ? -1 : (Input.GetKey(kbc["steerY"]) == true) ? 1 : 0;
                fire = Input.GetKeyDown(kbc["activateWeapon"]);
                cameraFactor = (Input.GetKey(kbc["cameraX"]) == true) ? -1 : (Input.GetKey(kbc["cameraY"]) == true) ? 1 : 0;
                ceaseFire = Input.GetKeyUp(kbc["activateWeapon"]);
                switchWeapon = Input.GetKeyDown(kbc["switchWeapon"]);
                pause = Input.GetKeyDown(kbc["pause"]);
            }

            //Debug.Log("Player: " + prefix + " LeftPedal: " + leftPedal + " RightPedal: " + rightPedal + " TurnFactor: " + turnFactor);

            move.SetFactors(leftPedal, rightPedal, turnFactor, cameraFactor);//, forward);
            if (fire) player.FireWeapon();
            else if (ceaseFire) player.CeaseFire();
            if (switchWeapon) player.SwitchWeapon();
            if (pause) StateManager.instance.SetPauseUser(int.Parse(prefix.Substring(1, 1)));
        }
        else if (StateManager.instance.RequestPausePermission(int.Parse(prefix.Substring(1, 1))))
        {
            ButtonSelect bs = ScreenManager.instance.currentScreen.GetComponent<ButtonSelect>();
            currentTime -= Time.deltaTime;
            if (useController)
            {
                if (XCI.GetAxis(xba["steerX"], playerNumber) == -1 && currentTime <= 0)
                {
                    bs.SelectLeft();
                    currentTime = delay;
                }
                else if (XCI.GetAxis(xba["steerX"], playerNumber) == 1 && currentTime <= 0)
                {
                    bs.SelectRight();
                    currentTime = delay;
                }

                if (XCI.GetAxis(xba["steerY"], playerNumber) == -1 && currentTime <= 0)
                {
                    bs.SelectDown();
                    currentTime = delay;
                }
                else if (XCI.GetAxis(xba["steerY"], playerNumber) == 1 && currentTime <= 0)
                {
                    bs.SelectUp();
                    currentTime = delay;
                }

                if (XCI.GetButtonDown(xbb["activateWeapon"]))
                {
                    bs.Click();
                }
            }
        }
    }
}