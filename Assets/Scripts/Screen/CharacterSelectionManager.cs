using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class CharacterSelectionManager : MonoBehaviour 
{
	public ControllerRegistration controllerReg;
	public Text playerSelectingText;
    public int[] selections;

	public Image left;
	public Sprite leftButtonSelect;
	private Sprite leftButtonOriginal;
	public Image right;
	public Sprite rightButtonSelect;
	private Sprite rightButtonOriginal;
    public GameObject[] subscreens;
	public int maxIndex;
	public int currentIndex = 0;

    public int playerPicking = 1;

    // Variables that control the state of our left and right arrows
	private float time = 0;
	private float timeTilBack = 0.2f;
	private bool startCount = false;

    // Variables controlling if and how often we can transition between characters
	private bool canTransition = true;
	private float timeTilTransition = 0.5f;
	private float timeForTransition = 0;

	// Use this for initialization
	void Start ()
    {
        selections = new int[controllerReg.playerCount];

        playerSelectingText.text = "Player " + playerPicking + " Picking";

        leftButtonOriginal = left.sprite;
		rightButtonOriginal = right.sprite;
        maxIndex = subscreens.Length-1;

		if (currentIndex == 0)
			left.color = Color.gray;
		if (currentIndex == maxIndex)
			right.color = Color.gray;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (Input.GetButtonDown("P" + playerPicking + "_A"))
        {
            SaveCharacterSelection(playerPicking, currentIndex);
            Reset();
        }

		float h = Input.GetAxis ("P" + playerPicking + "_Horizontal");
		Debug.Log (h);
		if (h < -0.7f) 
		{
			if (canTransition) TransitionLeft ();
		} 
		else if (h > 0.7f) 
		{
			if (canTransition) TransitionRight ();
		}

		if (startCount) {
			time += Time.deltaTime;

			if (time > timeTilBack) 
			{
				Original ();
				time = 0;
				startCount = false;
			}
		}

		if (!canTransition) 
		{
			timeForTransition += Time.deltaTime;

			if (timeForTransition > timeTilTransition && !subscreens[currentIndex].GetComponent<Animator>().IsInTransition(0)) 
			{
				timeForTransition = 0;
				canTransition = true;
			}
		}
	}

    public void TransitionLeft()
    {
		canTransition = false;

		TestBool();

		if (currentIndex == 0) 
		{
			left.color = Color.gray;
		} 
		else 
		{
			subscreens [currentIndex].GetComponent<Animator> ().Play ("MiddleToRight");
			subscreens [currentIndex - 1].GetComponent<Animator> ().Play ("LeftToMiddle");

			currentIndex -= 1;

			left.color = Color.red;
		}


		Debug.Log("Left");
    }

    public void TransitionRight()
    {
		canTransition = false;

		TestBool ();

		if (currentIndex == maxIndex) 
		{
			right.color = Color.gray;
		} 
		else
		{
			subscreens [currentIndex].GetComponent<Animator> ().Play ("MiddleToLeft");
			subscreens [currentIndex + 1].GetComponent<Animator> ().Play ("RightToMiddle");

			currentIndex += 1;

			right.color = Color.red;
		}

		Debug.Log("Right");
    }

	public void TestBool()
	{
		if (startCount) 
		{
			Original ();
			time = 0;
		} 
		else 
		{
			startCount = true;
		}
	}

	public void Original()
	{
		if (currentIndex == 0) 
		{
			left.color = Color.gray;
		} 
		else left.color = Color.white;
		if (currentIndex == maxIndex) 
		{
			right.color = Color.gray;
		} 
		else right.color = Color.white;

	}

	public void Reset()
	{
        // Transition back to first player.  Maybe not.  Not

        if (controllerReg.playerCount > playerPicking)
        {
            playerPicking++;

            // Change player selecting text.
            playerSelectingText.text = "Player " + playerPicking + " Picking";
        }
        else
        {
            playerSelectingText.text = "";

            // All players have picked.  Save to StateManager.
            FindObjectOfType<StateManager>().SaveCharSelectionsTemp(selections);

            // Transition to Track Selection screen.
            FindObjectOfType<StateManager>().TrackSelection();
        }
    }

    public void SaveCharacterSelection(int player, int character)
	{
        //Temp if statement until our characters are done.
        if (character > 3) selections[player-1] = 3;
        else selections[player-1] = character;
	}
}
