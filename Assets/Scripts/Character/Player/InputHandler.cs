using UnityEngine;
//using XboxCtrlrInput;
using System.Collections.Generic;

public class InputHandler : MonoBehaviour
{
    /*
     * THis class is required to be a component of all player objects. 
     * It will send messages to the player's move class, which will move the player
     * The Move class will not move the player until the Update function is called, which the Player will do
     **/
    private Player player;
    private NewMove move;
    private string prefix;
    //private XboxController playerNumber;
    private bool useController = true;
    //private Dictionary<string, XboxAxis> xba;
    //private Dictionary<string, XboxButton> xbb;
    private Dictionary<string, KeyCode> kbc;
    private Dictionary<string, string> ucv;
    private float currentTime;
    private float delay = 0.2f;

    //temp for keyboard build
    private bool lastPedalLeft = true;

    // Use this for initialization
    void Start()
    {
        player = gameObject.GetComponent<Player>();
        move = gameObject.GetComponent<NewMove>();
        prefix = "P1";//player.prefix;
        currentTime = 0f;
        switch (prefix)
        {
            case "P1":
                //playerNumber = XboxController.First;
                break;
            case "P2":
                //playerNumber = XboxController.Second;
                break;
            case "P3":
                //playerNumber = XboxController.Third;
                break;
            case "P4":
                //playerNumber = XboxController.Fourth;
                break;
        }
    }

    public void ReceiveDefinitions(bool uc, /*Dictionary<string, XboxAxis> xa, Dictionary<string, XboxButton> xb,*/ Dictionary<string, KeyCode> kb, Dictionary<string, string> uv)
    {
        useController = uc;
        //xba = xa;
        //xbb = xb;
        //kbc = kb;
        ucv = uv;
    }

    // Update is called once per frame
    void Update()
    {
        //if (!StateManager.instance.isPaused || ScreenManager.instance.currentScreen.GetComponent<Screen>().isPublicMenu)
        //{
            bool leftPedal;
            bool rightPedal;
            float turnFactor;
            float cameraFactor;
            bool fire;
            bool ceaseFire;
            bool activateUlti;
            //bool pause;

            //if (useController)
            //{
                /*leftPedal = (XCI.GetAxis(xba["leftPedal"], playerNumber) == 1) ? true : false;
                rightPedal = (XCI.GetAxis(xba["rightPedal"], playerNumber) == 1) ? true : false;
                turnFactor = XCI.GetAxis(xba["steerX"], playerNumber);
                cameraFactor = XCI.GetAxis(xba["cameraX"], playerNumber);
                fire = XCI.GetButtonDown(xbb["activateWeapon"], playerNumber);
                ceaseFire = XCI.GetButtonUp(xbb["activateWeapon"], playerNumber);
                activateUlti = XCI.GetButtonDown(xbb["switchWeapon"], playerNumber);
                pause = XCI.GetButtonDown(xbb["pause"], playerNumber);*/

                leftPedal = (Input.GetAxis(/*ucv["leftPedal"]*/"P1_LeftTrigger") == 1) ? true : false;
                rightPedal = (Input.GetAxis(/*ucv["rightPedal"]*/"P1_RightTrigger") == 1) ? true : false;
                turnFactor = Input.GetAxis(/*ucv["steerX"]*/"P1_LeftStickX");
                cameraFactor = Input.GetAxis(/*ucv["cameraX"]*/"P1_RightStickX");
                fire = Input.GetButtonDown(/*ucv["activateWeapon"]*/"P1_A");
                ceaseFire = Input.GetButtonUp(/*ucv["activateWeapon"]*/"P1_A");
                activateUlti = Input.GetButtonDown(/*ucv["switchWeapon"]*/"P1_Y");
                //pause = Input.GetButtonDown(/*ucv["pause"]*/"P1_Start");
            //}
            /*else
            {
                leftPedal = (Input.GetKeyDown(kbc["leftPedal"]) == true) ? true : false;
                rightPedal = (Input.GetKeyDown(kbc["rightPedal"]) == true) ? true : false;
                turnFactor = (Input.GetKey(kbc["steerX"]) == true) ? -1 : (Input.GetKey(kbc["steerY"]) == true) ? 1 : 0;
                fire = Input.GetKeyDown(kbc["activateWeapon"]);
                cameraFactor = (Input.GetKey(kbc["cameraX"]) == true) ? -1 : (Input.GetKey(kbc["cameraY"]) == true) ? 1 : 0;
                ceaseFire = Input.GetKeyUp(kbc["activateWeapon"]);
                activateUlti = Input.GetKeyDown(kbc["switchWeapon"]);
                pause = Input.GetKeyDown(kbc["pause"]);

                /*if (prefix == "P1")
                {
                    if (lastPedalLeft)
                    {
                        leftPedal = false;
                        rightPedal = (Input.GetKey(KeyCode.W)) ? true : false;
                        lastPedalLeft = false;
                    }
                    else
                    {
                        rightPedal = false;
                        leftPedal = (Input.GetKey(KeyCode.W)) ? true : false;
                        lastPedalLeft = true;
                    }
                    if (Input.GetKey(KeyCode.S)) rightPedal = leftPedal = true;
                    turnFactor = (Input.GetKey(KeyCode.A)) ? -1 : (Input.GetKey(KeyCode.D)) ? 1 : 0;
                    fire = Input.GetKey(KeyCode.E);
                    cameraFactor = (Input.GetKey(KeyCode.Z)) ? 1 : (Input.GetKey(KeyCode.C)) ? -1 : 0;
                    ceaseFire = Input.GetKeyUp(KeyCode.E);
                    activateUlti = Input.GetKeyDown(KeyCode.X);
                    pause = Input.GetKeyDown(KeyCode.Escape);
                }
                else
                {
                    if (lastPedalLeft)
                    {
                        leftPedal = false;
                        rightPedal = (Input.GetKey(KeyCode.UpArrow)) ? true : false;
                        lastPedalLeft = false;
                    }
                    else
                    {
                        rightPedal = false;
                        leftPedal = (Input.GetKey(KeyCode.UpArrow)) ? true : false;
                        lastPedalLeft = true;
                    }
                    if (Input.GetKey(KeyCode.DownArrow)) rightPedal = leftPedal = true;
                    turnFactor = (Input.GetKey(KeyCode.LeftArrow)) ? -1 : (Input.GetKey(KeyCode.RightArrow)) ? 1 : 0;
                    fire = Input.GetKey(KeyCode.RightShift);
                    cameraFactor = (Input.GetKey(KeyCode.N)) ? 1 : (Input.GetKey(KeyCode.M)) ? -1 : 0;
                    ceaseFire = Input.GetKeyUp(KeyCode.RightShift);
                    activateUlti = Input.GetKeyDown(KeyCode.Slash);
                    pause = false;
                }*/
            //}

            //Debug.Log("Player: " + prefix + " LeftPedal: " + leftPedal + " RightPedal: " + rightPedal + " TurnFactor: " + turnFactor);

            move.SetFactors(leftPedal, rightPedal, turnFactor, cameraFactor);//, forward);
            if (fire) player.FireWeapon();
            else if (ceaseFire) player.CeaseFire();
            if (activateUlti) player.ActivateUlti();
            //if (pause) StateManager.instance.Pause(int.Parse(prefix.Substring(1, 1)));
        //}
        /*else if (StateManager.instance.RequestPausePermission(int.Parse(prefix.Substring(1, 1))))
        {
            ButtonSelect bs = ScreenManager.instance.currentScreen.GetComponent<ButtonSelect>();
            currentTime -= Time.deltaTime;
            if (useController)
            {
                //if (Mathf.Abs(XCI.GetAxis(xba["steerX"], playerNumber) + 1) < 0.1 && Mathf.Abs(XCI.GetAxis(xba["steerX"], playerNumber)) > 0.75f && currentTime <= 0)
                if (Mathf.Abs(Input.GetAxis(ucv["steerX"]) + 1) < 0.1 && Mathf.Abs(Input.GetAxis(ucv["steerX"])) > 0.75f && currentTime <= 0)
                {
                    bs.SelectLeft();
                    currentTime = delay;
                }
                else if (Mathf.Abs(1 - Input.GetAxis(ucv["steerX"])) < 0.1 && Mathf.Abs(Input.GetAxis(ucv["steerX"])) > 0.75f && currentTime <= 0)
                {
                    bs.SelectRight();
                    currentTime = delay;
                }

                if (Mathf.Abs(Input.GetAxis(ucv["steerY"]) + 1) < 0.1 && Mathf.Abs(Input.GetAxis(ucv["steerY"])) > 0.75f && currentTime <= 0)
                {
                    bs.SelectUp();
                    currentTime = delay;
                }
                else if (Mathf.Abs(1 - Input.GetAxis(ucv["steerY"])) < 0.1 && Mathf.Abs(Input.GetAxis(ucv["steerY"])) > 0.75f && currentTime <= 0)
                {
                    bs.SelectDown();
                    currentTime = delay;
                }

                if (Input.GetButtonDown(ucv["activateWeapon"]))
                {
                    //print("clicked");
                    bs.Click();
                }

                if (Input.GetButtonDown(ucv["activatePickup"]))
                {
                    //bs.GoBack();
                    if (ScreenManager.instance.currentScreen.GetComponent<Screen>().isRoot)
                        StateManager.instance.Unpause(int.Parse(prefix.Substring(1, 1)));
                    ScreenManager.instance.GoBack();
                    ScreenManager.instance.currentScreen.GetComponent<ButtonSelect>().GoBack();
                }
            }
        }*/
    }
}