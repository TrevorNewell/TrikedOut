using UnityEngine;
using System.Collections;

public class SelectCharacter : MonoBehaviour
{
    public int playerNumber; // Between 1 and 4.  Indicates Player Number.
    public string navName;  // Contains the Axis name for the Player.  i.e. P1_Horizontal, let's us navigate the "objectsToNavigate" using the Input defined as P1_Horizontal.

    public GameObject[] objectsToNavigate; // Contains all the objects we can navigate to.  In the future, if we had enough characters we could prevent the same character from being selected by another player with a simple "isSelected" check on the game object.

    public int currentObject = 0;  // The object we are currently selecting.  When SaveCharSelections is called from StateManager, this is how we'll know which character the player w/ playerNumber picked.  
    private bool hasPicked = false;  // Currently used as just a placeholder but can be used later to prevent Player 1 from going to track selection without all the players on a character.  Or when all these are true for "isActive" players, we can display a label saying press start to confirm or w/e we want.
    public bool isActive = false;  // False if the player with playerNumber hasn't been activated.  They're activated when "A" is pressed on their respective controller.
    public float timeBetweenClicks = 0.2f; // How often can we switch from one label to the other?  This is used to control the massive amount of updates that happen per second.  
    public bool canClick = false; // True when "timeBetweenClicks" seconds has passed.
    private float timer = 0.0f;

	// Use this for initialization
	void Start ()
    {
        // Set the currentObject based on our players number
	    if (playerNumber <= objectsToNavigate.Length) // This used to be < on the condition.  Maybe that fixed something? Haven't investigated
        {
            currentObject = playerNumber - 1;
        }
        // If there's more players then there are characters to choose from (as will be the case soon enough), then set them to the first character.
        else
        {
            currentObject = 0;
        }

        // Initially, all these labels are deactivated.  I want to move away from this, and have them stack on each other based on other players that have already selected that character.  Instead of just deactivating a label and reactivating another.
        foreach (GameObject g in objectsToNavigate)
        {
            g.SetActive(false);
        }
    }
	
    // Called when "A" is pressed on player numbers controller
    public void Activate()
    {
        objectsToNavigate[currentObject].SetActive(true);
        isActive = true;
    }

	// Update is called once per frame
	void Update ()
    {
        // Track how much time has passed
        timer += Time.deltaTime;

        // If enough time has passed, we can move to a different object.
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

            // If the player isn't active, leftRight will always be 0.
            if (isActive)
            {
                leftRight = Input.GetAxis(navName);
            }

            if (leftRight != 0)
            {
                if (canClick)
                {
                    // We can move to another object, and we have so set canClick to false.
                    canClick = false;

                    // Moved left
                    if (leftRight < 0)
                    {
                        if (currentObject > 0)
                        {
                            objectsToNavigate[currentObject].SetActive(false);
                            currentObject--;
                            objectsToNavigate[currentObject].SetActive(true);
                        }
                    }
                    // Moved right
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
