using UnityEngine;
using System.Collections;

public class CheckInput : MonoBehaviour {

	//---- on off switches to show us which Unity UI buttons are being pressed or not ----// 
	public bool isButtonPressed = false;

	public void ButtonPressed ()       
	{
		isButtonPressed = true; 
	}

	public void ButtonNotPressed ()       
	{
		isButtonPressed = false;  
	}
}
