using UnityEngine;
using System.Collections.Generic;
using XboxCtrlrInput;
using System.IO;

public class ControlManager : MonoBehaviour
{
    public ControlManager instance;

    private Dictionary<string, XboxAxis> xboxStringToAxis;
    private Dictionary<string, XboxButton> xboxStringToButton;
    private Dictionary<string, KeyCode> keyboardStringToKey;

    private Dictionary<XboxAxis, string> xboxAxisToString;
    private Dictionary<XboxButton, string> xboxButtonToString;
    private Dictionary<KeyCode, string> keyboardKeyToString;

    public Dictionary<string, InputValues> playerControls;
    public Dictionary<string, string> files;

    private string[] prefixes;

    void Awake()
    {
        instance = this;

        xboxStringToAxis = new Dictionary<string, XboxAxis>();
        xboxStringToButton = new Dictionary<string, XboxButton>();
        keyboardStringToKey = new Dictionary<string, KeyCode>();

        xboxAxisToString = new Dictionary<XboxAxis, string>();
        xboxButtonToString = new Dictionary<XboxButton, string>();
        keyboardKeyToString = new Dictionary<KeyCode, string>();

        SetDefinitions();

        playerControls = new Dictionary<string, InputValues>();
        files = new Dictionary<string, string>();

        prefixes = new string[4]{ "P1", "P2", "P3", "P4"};

        foreach (string p in prefixes)
        {
            playerControls.Add(p, new InputValues(p));
            ReadInputOptions(p);
        }
    }

    void WriteInputOptions(string prefix)
    {
        string file = playerControls[prefix].GetXboxValues(xboxAxisToString, xboxButtonToString) + playerControls[prefix].GetKeyboardValues(keyboardKeyToString);

        StreamWriter sw = new StreamWriter(Application.dataPath + "/Controls/" + prefix + "controls.txt");
        sw.Write(file.ToCharArray());
        sw.Close();
    }

    void ReadInputOptions(string prefix)
    {
        StreamReader file = null;
        playerControls[prefix].ClearDefinitions();

        try
        {
            file = new StreamReader(Application.dataPath + "/Controls/" + prefix + "controls.txt");
        }
        catch(FileNotFoundException)
        {
            playerControls[prefix].SetDefaultValues();
            WriteInputOptions(prefix);
            return;
        }

        int state = 0;
        while (!file.EndOfStream)
        {
            string line = file.ReadLine();
            if (line.Equals("[XboxAxis]") || line.Equals("[XboxButton]") || line.Equals("[KeyboardKeys]"))
            {
                state++;
                continue;
            }
            string[] lines = line.Split("=".ToCharArray());
            if (lines[0].Equals("useController")) playerControls[prefix].useController = lines[1].Equals("True");
            else if (state == 1) playerControls[prefix].xboxAxisValues.Add(lines[0], xboxStringToAxis[lines[1]]);
            else if (state == 2) playerControls[prefix].xboxButtonValues.Add(lines[0], xboxStringToButton[lines[1]]);
            else if (state == 3) playerControls[prefix].keyboardButtonValues.Add(lines[0], keyboardStringToKey[lines[1]]);
        }

        file.Close();
    }
    
	void Start ()
    {
	    foreach (string p in prefixes)
        {
            playerControls[p].SetValues();
        }
	}
	

	void Update () {

    }
    void SetDefinitions()
    {
        //String to Input

        xboxStringToAxis.Add("LeftTrigger", XboxAxis.LeftTrigger);
        xboxStringToAxis.Add("RightTrigger", XboxAxis.RightTrigger);
        xboxStringToAxis.Add("LeftStickX", XboxAxis.LeftStickX);
        xboxStringToAxis.Add("LeftStickY", XboxAxis.LeftStickY);
        xboxStringToAxis.Add("RightStickX", XboxAxis.RightStickX);
        xboxStringToAxis.Add("RightStickY", XboxAxis.RightStickY);

        xboxStringToButton.Add("A", XboxButton.A);
        xboxStringToButton.Add("B", XboxButton.B);
        xboxStringToButton.Add("X", XboxButton.X);
        xboxStringToButton.Add("Y", XboxButton.Y);
        xboxStringToButton.Add("RightBumper", XboxButton.RightBumper);
        xboxStringToButton.Add("LeftBumper", XboxButton.LeftBumper);
        xboxStringToButton.Add("DPadUp", XboxButton.DPadUp);
        xboxStringToButton.Add("DPadDown", XboxButton.DPadDown);
        xboxStringToButton.Add("DPadLeft", XboxButton.DPadLeft);
        xboxStringToButton.Add("DPadRight", XboxButton.DPadRight);
        xboxStringToButton.Add("Start", XboxButton.Start);
        xboxStringToButton.Add("Back", XboxButton.Back);
        xboxStringToButton.Add("LeftStick", XboxButton.LeftStick);
        xboxStringToButton.Add("RightStick", XboxButton.RightStick);

        keyboardStringToKey.Add("A", KeyCode.A);
        keyboardStringToKey.Add("B", KeyCode.B);
        keyboardStringToKey.Add("C", KeyCode.C);
        keyboardStringToKey.Add("D", KeyCode.D);
        keyboardStringToKey.Add("E", KeyCode.E);
        keyboardStringToKey.Add("F", KeyCode.F);
        keyboardStringToKey.Add("G", KeyCode.G);
        keyboardStringToKey.Add("H", KeyCode.H);
        keyboardStringToKey.Add("I", KeyCode.I);
        keyboardStringToKey.Add("J", KeyCode.J);
        keyboardStringToKey.Add("K", KeyCode.K);
        keyboardStringToKey.Add("L", KeyCode.L);
        keyboardStringToKey.Add("M", KeyCode.M);
        keyboardStringToKey.Add("N", KeyCode.N);
        keyboardStringToKey.Add("O", KeyCode.O);
        keyboardStringToKey.Add("P", KeyCode.P);
        keyboardStringToKey.Add("Q", KeyCode.Q);
        keyboardStringToKey.Add("R", KeyCode.R);
        keyboardStringToKey.Add("S", KeyCode.S);
        keyboardStringToKey.Add("T", KeyCode.T);
        keyboardStringToKey.Add("U", KeyCode.U);
        keyboardStringToKey.Add("V", KeyCode.V);
        keyboardStringToKey.Add("W", KeyCode.W);
        keyboardStringToKey.Add("X", KeyCode.X);
        keyboardStringToKey.Add("Y", KeyCode.Y);
        keyboardStringToKey.Add("Z", KeyCode.Z);
        keyboardStringToKey.Add("1", KeyCode.Alpha1);
        keyboardStringToKey.Add("2", KeyCode.Alpha2);
        keyboardStringToKey.Add("3", KeyCode.Alpha3);
        keyboardStringToKey.Add("4", KeyCode.Alpha4);
        keyboardStringToKey.Add("5", KeyCode.Alpha5);
        keyboardStringToKey.Add("6", KeyCode.Alpha6);
        keyboardStringToKey.Add("7", KeyCode.Alpha7);
        keyboardStringToKey.Add("8", KeyCode.Alpha8);
        keyboardStringToKey.Add("9", KeyCode.Alpha9);
        keyboardStringToKey.Add("0", KeyCode.Alpha0);
        keyboardStringToKey.Add("Tab", KeyCode.Tab);
        keyboardStringToKey.Add("LeftShift", KeyCode.LeftShift);
        keyboardStringToKey.Add("RightShift", KeyCode.RightShift);
        keyboardStringToKey.Add("Space", KeyCode.Space);
        keyboardStringToKey.Add("Return", KeyCode.Return);
        keyboardStringToKey.Add("UpArrow", KeyCode.UpArrow);
        keyboardStringToKey.Add("DownArrow", KeyCode.DownArrow);
        keyboardStringToKey.Add("LeftArrow", KeyCode.LeftArrow);
        keyboardStringToKey.Add("RightArrow", KeyCode.RightArrow);
        keyboardStringToKey.Add("Escape", KeyCode.Escape);

        //InputToString

        xboxAxisToString.Add(XboxAxis.LeftTrigger, "LeftTrigger");
        xboxAxisToString.Add(XboxAxis.RightTrigger, "RightTrigger");
        xboxAxisToString.Add(XboxAxis.LeftStickX, "LeftStickX");
        xboxAxisToString.Add(XboxAxis.LeftStickY, "LeftStickY");
        xboxAxisToString.Add(XboxAxis.RightStickX, "RightStickX");
        xboxAxisToString.Add(XboxAxis.RightStickY, "RightStickY");

        xboxButtonToString.Add(XboxButton.A, "A");
        xboxButtonToString.Add(XboxButton.B, "B");
        xboxButtonToString.Add(XboxButton.X, "X");
        xboxButtonToString.Add(XboxButton.Y, "Y");
        xboxButtonToString.Add(XboxButton.RightBumper, "RightBumper");
        xboxButtonToString.Add(XboxButton.LeftBumper, "LeftBumper");
        xboxButtonToString.Add(XboxButton.DPadUp, "DPadUp");
        xboxButtonToString.Add(XboxButton.DPadDown, "DPadDown");
        xboxButtonToString.Add(XboxButton.DPadLeft, "DPadLeft");
        xboxButtonToString.Add(XboxButton.DPadRight, "DPadRight");
        xboxButtonToString.Add(XboxButton.Start, "Start");
        xboxButtonToString.Add(XboxButton.Back, "Back");
        xboxButtonToString.Add(XboxButton.LeftStick, "LeftStick");
        xboxButtonToString.Add(XboxButton.RightStick, "RightStick");

        keyboardKeyToString.Add(KeyCode.A, "A");
        keyboardKeyToString.Add(KeyCode.B, "B");
        keyboardKeyToString.Add(KeyCode.C, "C");
        keyboardKeyToString.Add(KeyCode.D, "D");
        keyboardKeyToString.Add(KeyCode.E, "E");
        keyboardKeyToString.Add(KeyCode.F, "F");
        keyboardKeyToString.Add(KeyCode.G, "G");
        keyboardKeyToString.Add(KeyCode.H, "H");
        keyboardKeyToString.Add(KeyCode.I, "I");
        keyboardKeyToString.Add(KeyCode.J, "J");
        keyboardKeyToString.Add(KeyCode.K, "K");
        keyboardKeyToString.Add(KeyCode.L, "L");
        keyboardKeyToString.Add(KeyCode.M, "M");
        keyboardKeyToString.Add(KeyCode.N, "N");
        keyboardKeyToString.Add(KeyCode.O, "O");
        keyboardKeyToString.Add(KeyCode.P, "P");
        keyboardKeyToString.Add(KeyCode.Q, "Q");
        keyboardKeyToString.Add(KeyCode.R, "R");
        keyboardKeyToString.Add(KeyCode.S, "S");
        keyboardKeyToString.Add(KeyCode.T, "T");
        keyboardKeyToString.Add(KeyCode.U, "U");
        keyboardKeyToString.Add(KeyCode.V, "V");
        keyboardKeyToString.Add(KeyCode.W, "W");
        keyboardKeyToString.Add(KeyCode.X, "X");
        keyboardKeyToString.Add(KeyCode.Y, "Y");
        keyboardKeyToString.Add(KeyCode.Z, "Z");
        keyboardKeyToString.Add(KeyCode.Alpha1, "1");
        keyboardKeyToString.Add(KeyCode.Alpha2, "2");
        keyboardKeyToString.Add(KeyCode.Alpha3, "3");
        keyboardKeyToString.Add(KeyCode.Alpha4, "4");
        keyboardKeyToString.Add(KeyCode.Alpha5, "5");
        keyboardKeyToString.Add(KeyCode.Alpha6, "6");
        keyboardKeyToString.Add(KeyCode.Alpha7, "7");
        keyboardKeyToString.Add(KeyCode.Alpha8, "8");
        keyboardKeyToString.Add(KeyCode.Alpha9, "9");
        keyboardKeyToString.Add(KeyCode.Alpha0, "0");
        keyboardKeyToString.Add(KeyCode.Tab, "Tab");
        keyboardKeyToString.Add(KeyCode.LeftShift, "LeftShift");
        keyboardKeyToString.Add(KeyCode.RightShift, "RightShift");
        keyboardKeyToString.Add(KeyCode.Return, "Return");
        keyboardKeyToString.Add(KeyCode.UpArrow, "UpArrow");
        keyboardKeyToString.Add(KeyCode.DownArrow, "DownArrow");
        keyboardKeyToString.Add(KeyCode.LeftArrow, "LeftArrow");
        keyboardKeyToString.Add(KeyCode.RightArrow, "RightArrow");
        keyboardKeyToString.Add(KeyCode.Escape, "Escape");
    }
}
