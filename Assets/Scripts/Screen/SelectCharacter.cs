using UnityEngine;
using System.Collections;

public class SelectCharacter : MonoBehaviour
{
    public int playerNumber;
    public string navName;

    public GameObject[] objectsToNavigate;

    public int currentObject = 0;
    public bool hasPicked = false;
    public bool isActive = false;
    public float timeBetweenClicks = 0.2f;
    public bool canClick = false;
    private float timer = 0.0f;

	// Use this for initialization
	void Start ()
    {
	    if (playerNumber < objectsToNavigate.Length)
        {
            currentObject = playerNumber - 1;
        }

        foreach (GameObject g in objectsToNavigate)
        {
            g.SetActive(false);
        }
    }
	
    public void Activate()
    {
        objectsToNavigate[currentObject].SetActive(true);
        isActive = true;
    }

	// Update is called once per frame
	void Update ()
    {
        timer += Time.deltaTime;

        if (timer > timeBetweenClicks)
        {
            timer = 0;
            canClick = true;
        }

        //if (Input.GetButtonUp("P" + playerNumber + "_A"))
        //{
        //    hasPicked = true;
        //}

        //if (Input.GetButtonUp("P" + playerNumber + "_B"))
        //{
        //    hasPicked = false;
        //}

        if (!hasPicked)
        {
            float leftRight = 0;

            if (isActive)
            {
                leftRight = Input.GetAxis(navName);
            }

            if (leftRight != 0)
            {
                if (canClick)
                {
                    canClick = false;

                    if (leftRight < 0)
                    {
                        if (currentObject > 0)
                        {
                            objectsToNavigate[currentObject].SetActive(false);
                            currentObject--;
                            objectsToNavigate[currentObject].SetActive(true);
                        }
                    }
                    else if (leftRight > 0)
                    {
                        if (currentObject < objectsToNavigate.Length - 1)
                        {
                            objectsToNavigate[currentObject].SetActive(false);
                            currentObject++;
                            objectsToNavigate[currentObject].SetActive(true);
                        }
                    }
                    else
                    {
                        // leftRight is 0
                    }
                }
            }
        }
	}
}
