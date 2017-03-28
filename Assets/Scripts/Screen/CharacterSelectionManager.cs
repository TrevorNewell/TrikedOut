using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class CharacterSelectionManager : MonoBehaviour
{
    public ControllerRegistration controllerReg;
    public int[] selections;

    public GameObject[] playerChecks;
    public bool[] playerHasSelected;
    public bool allPlayersSelected;

    public GameObject[] subscreens;
    public GameObject[] p1Subscreens;
    public GameObject[] p2Subscreens;
    public GameObject[] p3Subscreens;
    public GameObject[] p4Subscreens;
    
    public int maxIndex;
    public int currentIndex = 0;
    public int p1Index = 0;
    public int p2Index = 0;
    public int p3Index = 0;
    public int p4Index = 0;

    public GameObject p1Marker;
    public GameObject p2Marker;
    public GameObject p3Marker;
    public GameObject p4Marker;

    // Variables that control the state of our left and right arrows
    private float time = 0;
    private float timeTilBack = 0.2f;
    private bool startCount = false;

    // Variables controlling if and how often we can transition between characters
    private bool p1CanTransition = true;
    private bool p2CanTransition = true;
    private bool p3CanTransition = true;
    private bool p4CanTransition = true;

    public bool[] playerCanTransition;
    public float[] timeForTransition;
    private float timeTilTransition = 0.5f;

    // Use this for initialization
    void Start()
    {
        //selections = new int[controllerReg.playerCount];
        //playerCanTransition = new bool[controllerReg.playerCount];
        //timeForTransition = new float[controllerReg.playerCount];
        //playerHasSelected = new bool[controllerReg.playerCount];

        //for (int i = 0; i < playerCanTransition.Length; i++)
        //{
        //    playerCanTransition[i] = true;
        //}
      
        foreach (GameObject s in subscreens)
        {
            s.GetComponent<Animator>().Play("Close", 0, 1.0f);
        }

        //foreach(GameObject s in p1Subscreens)
        //{
        //    //s.transform.position = p1Marker.transform.position;
        //    s.GetComponent<Animator>().Play("Close", 0, 1.0f);
        //}

        //foreach (GameObject s in p2Subscreens)
        //{
        //    //s.transform.position = p2Marker.transform.position;
        //    s.GetComponent<Animator>().Play("Close", 0, 1.0f);
        //}

        //foreach (GameObject s in p3Subscreens)
        //{
        //    //s.transform.position = p3Marker.transform.position;
        //    s.GetComponent<Animator>().Play("Close", 0, 1.0f);
        //}

        //foreach (GameObject s in p4Subscreens)
        //{
        //    //s.transform.position = p4Marker.transform.position;
        //    s.GetComponent<Animator>().Play("Close", 0, 1.0f);
        //}

        //if (controllerReg.p1)
        //{
        //    p1Subscreens[0].GetComponent<Animator>().SetBool("Open", true);
        //    p1Subscreens[0].GetComponent<Animator>().Play("Open", 0, 1.0f);
        //}
        //if (controllerReg.p2)
        //{
        //    p2Subscreens[0].GetComponent<Animator>().SetBool("Open", true);
        //    p2Subscreens[0].GetComponent<Animator>().Play("Open", 0, 1.0f);
        //}
        //if (controllerReg.p3)
        //{
        //    p3Subscreens[0].GetComponent<Animator>().SetBool("Open", true);
        //    p3Subscreens[0].GetComponent<Animator>().Play("Open", 0, 1.0f);
        //}
        //if (controllerReg.p4)
        //{
        //    p4Subscreens[0].GetComponent<Animator>().SetBool("Open", true);
        //    p4Subscreens[0].GetComponent<Animator>().Play("Open", 0, 1.0f);
        //}

        maxIndex = subscreens.Length - 1;
    }

    private void OnEnable()
    {
        p1Index = 0;
        p2Index = 0;
        p3Index = 0;
        p4Index = 0;

        selections = new int[controllerReg.playerCount];
        playerCanTransition = new bool[controllerReg.playerCount];
        timeForTransition = new float[controllerReg.playerCount];
        playerHasSelected = new bool[controllerReg.playerCount];

        for (int i = 0; i < playerCanTransition.Length; i++)
        {
            playerCanTransition[i] = true;
        }

        foreach (GameObject g in playerChecks)
        {
            g.SetActive(false);
        }
        for (int i = 0; i < playerHasSelected.Length; i++)
        {
            playerHasSelected[i] = false;
        }

        foreach (GameObject s in p1Subscreens)
        {
            //s.transform.position = p1Marker.transform.position;
            s.GetComponent<Animator>().Play("Close", 0, 1.0f);
        }

        foreach (GameObject s in p2Subscreens)
        {
            //s.transform.position = p2Marker.transform.position;
            s.GetComponent<Animator>().Play("Close", 0, 1.0f);
        }

        foreach (GameObject s in p3Subscreens)
        {
            //s.transform.position = p3Marker.transform.position;
            s.GetComponent<Animator>().Play("Close", 0, 1.0f);
        }

        foreach (GameObject s in p4Subscreens)
        {
            //s.transform.position = p4Marker.transform.position;
            s.GetComponent<Animator>().Play("Close", 0, 1.0f);
        }

        if (controllerReg.p1)
        {
            p1Subscreens[0].GetComponent<Animator>().SetBool("Open", true);
            p1Subscreens[0].GetComponent<Animator>().Play("Open", 0, 1.0f);
        }
        if (controllerReg.p2)
        {
            p2Subscreens[0].GetComponent<Animator>().SetBool("Open", true);
            p2Subscreens[0].GetComponent<Animator>().Play("Open", 0, 1.0f);
        }
        if (controllerReg.p3)
        {
            p3Subscreens[0].GetComponent<Animator>().SetBool("Open", true);
            p3Subscreens[0].GetComponent<Animator>().Play("Open", 0, 1.0f);
        }
        if (controllerReg.p4)
        {
            p4Subscreens[0].GetComponent<Animator>().SetBool("Open", true);
            p4Subscreens[0].GetComponent<Animator>().Play("Open", 0, 1.0f);
        }
    }

    public void Check(int playerNumber)
    {
        if (Input.GetButtonDown("P" + playerNumber + "_A"))
        {
            SaveCharacterSelection(playerNumber);
            Reset();
        }

        if (Input.GetButtonDown("P" + playerNumber + "_B"))
        {
            playerHasSelected[playerNumber - 1] = false;
            playerChecks[playerNumber - 1].SetActive(false);
        }

        float h = Input.GetAxis("P" + playerNumber + "_Horizontal");
        //Debug.Log(h);
        if (h < -0.7f)
        {
            if (playerCanTransition[playerNumber-1]) TransitionLeft(playerNumber);
        }
        else if (h > 0.7f)
        {
            if (playerCanTransition[playerNumber-1]) TransitionRight(playerNumber);
        }

        if(playerCanTransition[playerNumber-1] == false)
        {
            timeForTransition[playerNumber - 1] += Time.deltaTime;

            if (timeForTransition[playerNumber - 1] > timeTilTransition)
            {
                playerCanTransition[playerNumber - 1] = true;
                timeForTransition[playerNumber - 1] = 0;
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (controllerReg.p1) Check(1);
        if (controllerReg.p2) Check(2);
        if (controllerReg.p3) Check(3);
        if (controllerReg.p4) Check(4);
    }

    public void TransitionLeft(int playerNumber)
    {
        playerCanTransition[playerNumber - 1] = false;

        if (playerNumber == 1)
        {
            if (p1Index != 0)
            {
                p1Subscreens[p1Index].GetComponent<Animator>().SetBool("Open", false);
                p1Subscreens[p1Index - 1].GetComponent<Animator>().SetBool("Open", true);

                p1Index -= 1;
            }
        }
        else if (playerNumber == 2)
        {
            if (p2Index != 0)
            {
                p2Subscreens[p2Index].GetComponent<Animator>().SetBool("Open", false);
                p2Subscreens[p2Index - 1].GetComponent<Animator>().SetBool("Open", true);

                p2Index -= 1;
            }
        }
        else if (playerNumber == 3)
        {
            if (p3Index != 0)
            {
                p3Subscreens[p3Index].GetComponent<Animator>().SetBool("Open", false);
                p3Subscreens[p3Index - 1].GetComponent<Animator>().SetBool("Open", true);

                p3Index -= 1;
            }
        }
        else if (playerNumber == 4)
        {
            if (p4Index != 0)
            {
                p4Subscreens[p4Index].GetComponent<Animator>().SetBool("Open", false);
                p4Subscreens[p4Index - 1].GetComponent<Animator>().SetBool("Open", true);

                p4Index -= 1;
            }
        }
    }    

    public void TransitionRight(int playerNumber)
    {
        playerCanTransition[playerNumber - 1] = false;

        if (playerNumber == 1)
        {
            if (p1Index != maxIndex)
            {
                p1Subscreens[p1Index].GetComponent<Animator>().SetBool("Open", false);
                p1Subscreens[p1Index + 1].GetComponent<Animator>().SetBool("Open", true);

                p1Index += 1;
            }
        }
        else if (playerNumber == 2)
        {
            if (p2Index != maxIndex)
            {
                p2Subscreens[p2Index].GetComponent<Animator>().SetBool("Open", false);
                p2Subscreens[p2Index + 1].GetComponent<Animator>().SetBool("Open", true);

                p2Index += 1;
            }
        }
        else if (playerNumber == 3)
        {
            if (p3Index != maxIndex)
            {
                p3Subscreens[p3Index].GetComponent<Animator>().SetBool("Open", false);
                p3Subscreens[p3Index + 1].GetComponent<Animator>().SetBool("Open", true);

                p3Index += 1;
            }
        }
        else if (playerNumber == 4)
        {
            if (p4Index != maxIndex)
            {
                p4Subscreens[p4Index].GetComponent<Animator>().SetBool("Open", false);
                p4Subscreens[p4Index + 1].GetComponent<Animator>().SetBool("Open", true);

                p4Index += 1;
            }
        }
    }

    private void OnDisable()
    {
        //Reset();
    }

    public void Reset()
    {
        // Transition back to first player.  Maybe not.  Not

        if (controllerReg.playerCount >= 1 && allPlayersSelected)
        {
            // All players have picked.  Save to StateManager.
            FindObjectOfType<StateManager>().SaveCharSelectionsTemp(selections);

            // Transition to Track Selection screen.
            FindObjectOfType<StateManager>().TrackSelection();
        }
    }

    public void SaveCharacterSelection(int player)
    {
        playerHasSelected[player - 1] = true;
        playerChecks[player - 1].SetActive(true);

        // Check to see if we can now proceed to the next screen
        bool t = true;
        foreach(bool b in playerHasSelected)
        {
            if (!b) t = false;
        }
        allPlayersSelected = t;

        if (player == 1) selections[player - 1] = p1Index;
        if (player == 2) selections[player - 1] = p2Index;
        if (player == 3) selections[player - 1] = p3Index;
        if (player == 4) selections[player - 1] = p4Index;
    }
}

//using System;
//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;
//using UnityEngine.EventSystems;
//using UnityEngine.UI;

//public class CharacterSelectionManager : MonoBehaviour 
//{
//	public ControllerRegistration controllerReg;
//	public Text playerSelectingText;
//    public int[] selections;

//	public Image left;
//	public Sprite leftButtonSelect;
//	private Sprite leftButtonOriginal;
//	public Image right;
//	public Sprite rightButtonSelect;
//	private Sprite rightButtonOriginal;
//    public GameObject[] subscreens;
//	public int maxIndex;
//	public int currentIndex = 0;

//    public int playerPicking = 1;

//    // Variables that control the state of our left and right arrows
//	private float time = 0;
//	private float timeTilBack = 0.2f;
//	private bool startCount = false;

//    // Variables controlling if and how often we can transition between characters
//	private bool canTransition = true;
//	private float timeTilTransition = 0.5f;
//	private float timeForTransition = 0;

//	// Use this for initialization
//	void Start ()
//    {
//        selections = new int[controllerReg.playerCount];

//        playerSelectingText.text = "Player " + playerPicking + " Picking";

//        leftButtonOriginal = left.sprite;
//		rightButtonOriginal = right.sprite;
//        maxIndex = subscreens.Length-1;

//		if (currentIndex == 0)
//			left.color = Color.gray;
//		if (currentIndex == maxIndex)
//			right.color = Color.gray;
//	}

//	// Update is called once per frame
//	void Update ()
//    {
//        if (Input.GetButtonDown("P" + playerPicking + "_A"))
//        {
//            SaveCharacterSelection(playerPicking, currentIndex);
//            Reset();
//        }

//		float h = Input.GetAxis ("P" + playerPicking + "_Horizontal");
//		Debug.Log (h);
//		if (h < -0.7f) 
//		{
//			if (canTransition) TransitionLeft ();
//		} 
//		else if (h > 0.7f) 
//		{
//			if (canTransition) TransitionRight ();
//		}

//		if (startCount) {
//			time += Time.deltaTime;

//			if (time > timeTilBack) 
//			{
//				Original ();
//				time = 0;
//				startCount = false;
//			}
//		}

//		if (!canTransition) 
//		{
//			timeForTransition += Time.deltaTime;

//			if (timeForTransition > timeTilTransition && !subscreens[currentIndex].GetComponent<Animator>().IsInTransition(0)) 
//			{
//				timeForTransition = 0;
//				canTransition = true;
//			}
//		}
//	}

//    public void TransitionLeft()
//    {
//		canTransition = false;

//		TestBool();

//		if (currentIndex == 0) 
//		{
//			left.color = Color.gray;
//		} 
//		else 
//		{
//			subscreens [currentIndex].GetComponent<Animator> ().Play ("MiddleToRight");
//			subscreens [currentIndex - 1].GetComponent<Animator> ().Play ("LeftToMiddle");

//			currentIndex -= 1;

//			left.color = Color.red;
//		}


//		Debug.Log("Left");
//    }

//    public void TransitionRight()
//    {
//		canTransition = false;

//		TestBool ();

//		if (currentIndex == maxIndex) 
//		{
//			right.color = Color.gray;
//		} 
//		else
//		{
//			subscreens [currentIndex].GetComponent<Animator> ().Play ("MiddleToLeft");
//			subscreens [currentIndex + 1].GetComponent<Animator> ().Play ("RightToMiddle");

//			currentIndex += 1;

//			right.color = Color.red;
//		}

//		Debug.Log("Right");
//    }

//	public void TestBool()
//	{
//		if (startCount) 
//		{
//			Original ();
//			time = 0;
//		} 
//		else 
//		{
//			startCount = true;
//		}
//	}

//	public void Original()
//	{
//		if (currentIndex == 0) 
//		{
//			left.color = Color.gray;
//		} 
//		else left.color = Color.white;
//		if (currentIndex == maxIndex) 
//		{
//			right.color = Color.gray;
//		} 
//		else right.color = Color.white;

//	}

//    private void OnDisable()
//    {
//        Reset();
//    }

//    public void Reset()
//	{
//        // Transition back to first player.  Maybe not.  Not

//        if (controllerReg.playerCount > playerPicking)
//        {
//            playerPicking++;

//            // Change player selecting text.
//            playerSelectingText.text = "Player " + playerPicking + " Picking";
//        }
//        else
//        {
//            playerSelectingText.text = "";

//            // All players have picked.  Save to StateManager.
//            FindObjectOfType<StateManager>().SaveCharSelectionsTemp(selections);

//            // Transition to Track Selection screen.
//            FindObjectOfType<StateManager>().TrackSelection();
//        }
//    }

//    public void SaveCharacterSelection(int player, int character)
//	{
//        //Temp if statement until our characters are done.
//        if (character > 3) selections[player-1] = 3;
//        else selections[player-1] = character;
//	}
//}

