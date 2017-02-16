using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class CharacterSelectionManager : MonoBehaviour {

    public GameObject invisibleMiddleButton;

    public GameObject[] subscreens;
    public int currentIndex = 0;

    private int maxIndex;

    public int playerPicking = 1;

	// Use this for initialization
	void Start ()
    {
        maxIndex = subscreens.Length-1;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Input.GetButtonDown("P" + playerPicking + "_A"))
        {
            // SaveCharacterSelection(playerPicking, currentIndex);
        }
	}

    public void TransitionLeft()
    {
        //FindObjectOfType<EventSystem>().SetSelectedGameObject(null);
        //FindObjectOfType<EventSystem>().SetSelectedGameObject(invisibleMiddleButton);
        Debug.Log("Left");
    }

    public void TransitionRight()
    {
        //FindObjectOfType<EventSystem>().SetSelectedGameObject(null);
        //FindObjectOfType<EventSystem>().SetSelectedGameObject(invisibleMiddleButton);
        Debug.Log("Right");
    }


}
