using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuInputHandler : MonoBehaviour
{

    private float currentTime = 0f;
    private float delay = 0.2f;
    public string prefix;
	
	// Update is called once per frame
	void Update ()
    {
        ButtonSelect bs = ScreenManager.instance.currentScreen.GetComponent<ButtonSelect>();
        if (bs == null) return;
        currentTime -= Time.deltaTime;
        //if (Mathf.Abs(XCI.GetAxis(xba["steerX"], playerNumber) + 1) < 0.1 && Mathf.Abs(XCI.GetAxis(xba["steerX"], playerNumber)) > 0.75f && currentTime <= 0)
        if (Mathf.Abs(Input.GetAxis(prefix + "_LeftStickX") + 1) < 0.1 && Mathf.Abs(Input.GetAxis(prefix + "_LeftStickX")) > 0.75f && currentTime <= 0)
        {
            bs.SelectLeft();
            currentTime = delay;
        }
        else if (Mathf.Abs(1 - Input.GetAxis(prefix + "_LeftStickX")) < 0.1 && Mathf.Abs(Input.GetAxis(prefix + "_LeftStickX")) > 0.75f && currentTime <= 0)
        {
            bs.SelectRight();
            currentTime = delay;
        }

        if (Mathf.Abs(Input.GetAxis(prefix + "_LeftStickY") + 1) < 0.1 && Mathf.Abs(Input.GetAxis(prefix + "_LeftStickY")) > 0.75f && currentTime <= 0)
        {
            bs.SelectUp();
            currentTime = delay;
        }
        else if (Mathf.Abs(1 - Input.GetAxis(prefix + "_LeftStickY")) < 0.1 && Mathf.Abs(Input.GetAxis(prefix + "_LeftStickY")) > 0.75f && currentTime <= 0)
        {
            bs.SelectDown();
            currentTime = delay;
        }

        if (Input.GetButtonDown(prefix + "_A"))
        {
            //print("clicked");
            bs.Click();
        }

        if (Input.GetButtonDown(prefix + "_B"))
        {
            //bs.GoBack();
            if (ScreenManager.instance.currentScreen.GetComponent<Screen>().isRoot)
                StateManager.instance.Unpause(int.Parse(prefix.Substring(1, 1)));
            ScreenManager.instance.GoBack();
            ScreenManager.instance.currentScreen.GetComponent<ButtonSelect>().GoBack();
        }
    }
}
