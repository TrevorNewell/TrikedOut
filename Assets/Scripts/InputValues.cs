//using XboxCtrlrInput;
using UnityEngine;
using System.Collections.Generic;

public class InputValues
{
    public string prefix;
    public bool useController = true;
    //public XboxController playerController;
    //public Dictionary<string, XboxAxis> xboxAxisValues;
    //public Dictionary<string, XboxButton> xboxButtonValues;
    public Dictionary<string, KeyCode> keyboardButtonValues;
    public Dictionary<string, string> unityControllerValues;

    public InputValues(string p)
    {
        prefix = p;

        switch (prefix)
        {
            case "P1":
                //playerController = XboxController.First;
                break;
            case "P2":
                //playerController = XboxController.Second;
                break;
            case "P3":
                //playerController = XboxController.Third;
                break;
            case "P4":
                //playerController = XboxController.Fourth;
                break;
        }

        //xboxAxisValues = new Dictionary<string, XboxAxis>();
        //xboxButtonValues = new Dictionary<string, XboxButton>();
        keyboardButtonValues = new Dictionary<string, KeyCode>();
        unityControllerValues = new Dictionary<string, string>();
    }

    public string GetXboxValues(/*Dictionary<XboxAxis, string> xbA2S, Dictionary<XboxButton, string> xbB2S*/)
    {
        string retVal = "[XboxAxis]" + System.Environment.NewLine;

        /*retVal += "useController=";
        retVal += useController.ToString() + System.Environment.NewLine;
        retVal += "leftPedal=";
        retVal += xbA2S[xboxAxisValues["leftPedal"]] + System.Environment.NewLine;
        retVal += "rightPedal=";
        retVal += xbA2S[xboxAxisValues["rightPedal"]] + System.Environment.NewLine;
        retVal += "steerX=";
        retVal += xbA2S[xboxAxisValues["steerX"]] + System.Environment.NewLine;
        retVal += "steerY=";
        retVal += xbA2S[xboxAxisValues["steerY"]] + System.Environment.NewLine;
        retVal += "cameraX=";
        retVal += xbA2S[xboxAxisValues["cameraX"]] + System.Environment.NewLine;
        retVal += "cameraY=";
        retVal += xbA2S[xboxAxisValues["cameraY"]] + System.Environment.NewLine;

        retVal += "[XboxButton]" + System.Environment.NewLine;
        retVal += "switchWeapon=";
        retVal += xbB2S[xboxButtonValues["switchWeapon"]] + System.Environment.NewLine;
        retVal += "activateWeapon=";
        retVal += xbB2S[xboxButtonValues["activateWeapon"]] + System.Environment.NewLine;
        retVal += "activatePickup=";
        retVal += xbB2S[xboxButtonValues["activatePickup"]] + System.Environment.NewLine;
        retVal += "pause=";
        retVal += xbB2S[xboxButtonValues["pause"]] + System.Environment.NewLine;
        retVal += "map=";
        retVal += xbB2S[xboxButtonValues["map"]] + System.Environment.NewLine;*/

        return retVal;
    }

    public string GetKeyboardValues(Dictionary<KeyCode, string> kbK2S)
    {
        string retVal = "";

        retVal += "[KeyboardKeys]" + System.Environment.NewLine;
        retVal += "leftPedal=";
        retVal += kbK2S[keyboardButtonValues["leftPedal"]] + System.Environment.NewLine;
        retVal += "rightPedal=";
        retVal += kbK2S[keyboardButtonValues["rightPedal"]] + System.Environment.NewLine;
        retVal += "steerX=";
        retVal += kbK2S[keyboardButtonValues["steerX"]] + System.Environment.NewLine;
        retVal += "steerY=";
        retVal += kbK2S[keyboardButtonValues["steerY"]] + System.Environment.NewLine;
        retVal += "cameraX=";
        retVal += kbK2S[keyboardButtonValues["cameraX"]] + System.Environment.NewLine;
        retVal += "cameraY=";
        retVal += kbK2S[keyboardButtonValues["cameraY"]] + System.Environment.NewLine;
        retVal += "switchWeapon=";
        retVal += kbK2S[keyboardButtonValues["switchWeapon"]] + System.Environment.NewLine;
        retVal += "activateWeapon=";
        retVal += kbK2S[keyboardButtonValues["activateWeapon"]] + System.Environment.NewLine;
        retVal += "activatePickup=";
        retVal += kbK2S[keyboardButtonValues["activatePickup"]] + System.Environment.NewLine;
        retVal += "pause=";
        retVal += kbK2S[keyboardButtonValues["pause"]] + System.Environment.NewLine;
        retVal += "map=";
        retVal += kbK2S[keyboardButtonValues["map"]] + System.Environment.NewLine;

        return retVal;
    }

    public void ClearDefinitions()
    {
        //xboxAxisValues.Clear();
        //xboxButtonValues.Clear();
        keyboardButtonValues.Clear();
    }

    public void SetValues()
    {
        GameObject player = GameObject.Find(prefix);
        if (player == null) return;
        //player.GetComponent<InputHandler>().ReceiveDefinitions(useController, xboxAxisValues, xboxButtonValues, keyboardButtonValues, unityControllerValues);
    }

    public void SetDefaultValues()
    {
        /*xboxAxisValues.Add("leftPedal", XboxAxis.LeftTrigger);
        xboxAxisValues.Add("rightPedal", XboxAxis.RightTrigger);
        xboxAxisValues.Add("steerX", XboxAxis.LeftStickX);
        xboxAxisValues.Add("steerY", XboxAxis.LeftStickY);
        xboxAxisValues.Add("cameraX", XboxAxis.RightStickX);
        xboxAxisValues.Add("cameraY", XboxAxis.RightStickY);
        //Drifting is leftPedal || rightPedal > 1 sec
        //Breaking is leftPedal && rightPedal > 1 sec

        xboxButtonValues.Add("switchWeapon", XboxButton.Y);
        xboxButtonValues.Add("activateWeapon", XboxButton.A);
        xboxButtonValues.Add("activatePickup", XboxButton.B);
        xboxButtonValues.Add("pause", XboxButton.Start);
        xboxButtonValues.Add("map", XboxButton.RightBumper);

        //KEYBOARD
        keyboardButtonValues.Add("leftPedal", KeyCode.A);
        keyboardButtonValues.Add("rightPedal", KeyCode.D);
        //Breaking is leftPedal && rightPedal
        keyboardButtonValues.Add("switchWeapon", KeyCode.UpArrow);
        keyboardButtonValues.Add("activateWeapon", KeyCode.W);
        keyboardButtonValues.Add("activatePickup", KeyCode.S);
        //Drifting is leftPedal || rightPedal
        keyboardButtonValues.Add("pause", KeyCode.Escape);
        keyboardButtonValues.Add("map", KeyCode.M);
        keyboardButtonValues.Add("steerX", KeyCode.LeftArrow);
        keyboardButtonValues.Add("steerY", KeyCode.RightArrow);
        keyboardButtonValues.Add("cameraX", KeyCode.Tab);
        keyboardButtonValues.Add("cameraY", KeyCode.LeftShift);*/
    }
}
