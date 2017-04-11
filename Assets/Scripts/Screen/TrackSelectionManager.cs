using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class TrackSelectionManager : MonoBehaviour
{
    //public Text playerSelectingText;

    public Image left;
    //public Sprite leftButtonSelect;
    private Sprite leftButtonOriginal;
    public Image right;
    //public Sprite rightButtonSelect;
    private Sprite rightButtonOriginal;
    public GameObject[] subscreens;
    public GameObject[] loadingScreens;

    public int maxIndex;
    public int currentIndex = 0;

    private int playerPicking = 1;

    // Variables that control the state of our left and right arrows
    private float time = 0;
    private float timeTilBack = 0.2f;
    private bool startCount = false;

    // Variables controlling if and how often we can transition between characters
    private bool canTransition = true;
    private float timeTilTransition = 0.5f;
    private float timeForTransition = 0;

    // Use this for initialization
    void Start()
    {
        //playerSelectingText.text = "Player " + playerPicking + " Picking";

        leftButtonOriginal = left.sprite;
        rightButtonOriginal = right.sprite;
        maxIndex = subscreens.Length - 1;

        if (currentIndex == 0)
            left.color = Color.gray;
        if (currentIndex == maxIndex)
            right.color = Color.gray;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetButtonDown("P" + playerPicking + "_A"))
        {
            LoadTrack(currentIndex);
        }

        float h = Input.GetAxis("P" + playerPicking + "_Horizontal");
        Debug.Log(h);

        if (h < -0.7f)
        {
            if (canTransition) TransitionLeft();
        }
        else if (h > 0.7f)
        {
            if (canTransition) TransitionRight();
        }

        if (startCount)
        {
            time += Time.deltaTime;

            if (time > timeTilBack)
            {
                Original();
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
            subscreens[currentIndex].GetComponent<Animator>().Play("MiddleToRight");
            subscreens[currentIndex - 1].GetComponent<Animator>().Play("LeftToMiddle");

            currentIndex -= 1;

            left.color = Color.red;
        }


        Debug.Log("Left");
    }

    public void TransitionRight()
    {
        canTransition = false;

        TestBool();

        if (currentIndex == maxIndex)
        {
            right.color = Color.gray;
        }
        else
        {
            subscreens[currentIndex].GetComponent<Animator>().Play("MiddleToLeft");
            subscreens[currentIndex + 1].GetComponent<Animator>().Play("RightToMiddle");

            currentIndex += 1;

            right.color = Color.red;
        }

        Debug.Log("Right");
    }

    public void TestBool()
    {
        if (startCount)
        {
            Original();
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

    public void LoadTrack(int index)
    {
        // Store the int for player 1 in StateManager.  Or here, then set the variable in StateManager.
        gameObject.GetComponent<SceneLoader>().LoadScene(index + 1, loadingScreens[index]);
    }
}

