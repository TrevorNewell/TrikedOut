using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class RaceManager : MonoBehaviour
{
    [Header("Player")]
    public GameObject player;
    public bool isActive = true;
    //public GameObject speed;
    //public GameObject charge;

    [Header("Checkpoint Variables")]
    public bool disableCheckpointsOnStart = true;

    public int numLaps = 0; // How many laps does the race have?
    private int currentLap = 1; // What's the current lap?

    public Checkpoint[] checkpoints; // We only care about the status of hasPassed and isEnd in each of these scripts.  This script verifies that each checkpoint has been passed by the player, and if they have they make it to the next lap.
    private int numCheckpoints = 0; // The number of checkpoints in our race, determined by the size of the checkpoints array.

    private bool raceOver = false;

    private float[] laps; // Contains the time it took the player to complete each lap.  Will be the size of numLaps.

    public int countdownAtStart = 5; // This divided by 4 is how long each number will stay on screen at the start of the game.

    public bool isStarting = true; // True for the first countdownAtStart seconds of the game.
    private int originalFontSize; // Not used yet, intended to shrink down the size of each of ourStringsToDisplay.
    private float countdownPerNumber; // Determined by the size of ourStringsToDisplay as well as countdownAtStart.  
    private int currentDisplay = 0; // Current string we're displaying based on how much time has passed and countdownPerNumber.
    private string[] ourStringsToDisplay; // An array of strings displayed in order.

    public float tempTime; // Tracks time before the race starts.
    public float pauseTime; // How much time our game has been paused for.  Used to track actual overallTime.
    public float overallTime; // How long the race has actually been going.
    public float flythroughTime;

    private float currentTime; // Current lap time.
    private float lastTime; // Last laps time.

    private float allButThisLapTime = 0; // Contains the time for every lap, except this lap.

    private float t;

    private PlaceManager pm;

    private bool playingFlythrough = true;

    [Header("UI Variables")]
    // Text components for the appropriately named section of the screen.
    public Text leftText;
    public Text bottomLeftText;
    public Text directMiddleText;
    public Text rightText;

    // Default strings to display as prefixes to each corresponding variable.
    public string overallTimeString;
    public string currentString;
    public string lastString;
    public string lapsString;
    public string hpString;
    private string statusString;

    // Returns the ID for the "player" game 
    public int GetID()
    {
        return int.Parse(player.name.Substring(1));//player.GetComponent<Character>().GetID();
    }

	// Use this for initialization
	void Start ()
    {
        player.GetComponent<InputHandler>().TurnOff();

        bottomLeftText.text = "";
        directMiddleText.text = "";

        originalFontSize = directMiddleText.fontSize;

        // We manually set these here, just so they are consistent with every other race manager
        ourStringsToDisplay = new string[4];
        ourStringsToDisplay[0] = "3";
        ourStringsToDisplay[1] = "2";
        ourStringsToDisplay[2] = "1";
        ourStringsToDisplay[3] = "GO";

        // Calculate our countdownPerNumber
        countdownPerNumber = (float)countdownAtStart / ourStringsToDisplay.Length;

        // Find all our checkPointGOs to disable all mesh renderers within them
        GameObject[] theCheckpointGOs = GameObject.FindGameObjectsWithTag("Checkpoint");

        // Disable all renderers for our checkpoints.  We don't want the player to see that.
        if (disableCheckpointsOnStart)
        {
            foreach (GameObject c in theCheckpointGOs)
            {
                MeshRenderer[] m = c.GetComponentsInChildren<MeshRenderer>();
                foreach (MeshRenderer r in m)
                {
                    r.enabled = false;
                }
            }
        }

        // If we haven't specified our checkpoints, find them in the scene
        if (checkpoints.Length == 0)
        {
            checkpoints = gameObject.GetComponentsInChildren<Checkpoint>();
        }

        numCheckpoints = checkpoints.Length;
        Debug.Log(numCheckpoints + " " + GetID());

	    if (numLaps == 0)
        {
            numLaps = 1;
        }

        laps = new float[numLaps];

        overallTime = 0;

        // If we haven't specified a string, default to the strings below
        if (overallTimeString == "")
        {
            overallTimeString = "Overall: ";
        }
        if (lastString == "")
        {
            lastString = "Last: ";
        }
        if (currentString == "")
        {
            currentString = "Current: ";
        }
        if (lapsString == "")
        {
            lapsString = "Laps: ";
        }
        if (hpString == "")
        {
            hpString = "HP: ";
        }

        // Update our labels
        UpdateText();

        pm = GetComponent<PlaceManager>();
    }

    public void UpdatePassed(int pNum)
    {
        int id = int.Parse(player.name.Substring(1));
        if (pNum != id)
            return;
        pm.UpdatePassed(pNum);
    }

    /// <summary>
    ///     A message is sent upward from the final checkpoint to check for a valid lap.  We'll make sure the player has been through every checkpoint before putting him on the next lap.
    /// </summary>
    public bool CheckForLap(int pNum)
    {
        //int id = player.GetComponent<Character>().GetID();
        int id = int.Parse(player.name.Substring(1));
        if (pNum != id)
            return false;
        // If we have only passed the last checkpoint, it means the race is just starting and we need to reset the variables for the end checkpoint.
        bool endPassed = false;
        bool anyOtherPassed = false;
        //print(id);

        foreach (Checkpoint c in checkpoints)
        {
            if (c.hasPassed(id) == true && c.isEnd == false)
            {
                anyOtherPassed = true;
            }
            else if (c.hasPassed(id) == true && c.isEnd == true)
            {
                endPassed = true;
            }
        }

        if (anyOtherPassed == false && endPassed == true)
        {
            checkpoints[checkpoints.Length - 1].NewLap(id);
        }

        bool nextLap = true;
        // Make sure we've passed all checkpoints
        foreach (Checkpoint c in checkpoints)
        {
            if (c.hasPassed(id) == false)
            {
                nextLap = false;
            }
        }

        if (nextLap) // All checkpoints were passed through in the right direction
        {
            // Capture our lap time
            if (currentLap == 1)
            {
                laps[currentLap - 1] = overallTime;
                allButThisLapTime += overallTime;
            }
            else
            {
                laps[currentLap - 1] = overallTime - allButThisLapTime;
                allButThisLapTime += overallTime;
            }

            // Update the last lap time
            lastTime = laps[currentLap - 1];

            currentLap += 1;

            if (currentLap > numLaps) // The race is over
            {
                currentLap = numLaps;
                raceOver = true;

                UpdateText();
                // This is temp for now, just disable input to player for now.  We'll call a different method to do other stuff like stop the player while others finish, or if a solo race we'll show stats for the player.
                player.GetComponent<InputHandler>().TurnOff();
                //player.GetComponent<Move>().SlowCharacter();
            }

            foreach (Checkpoint c in checkpoints)
            {
                if (c.hasPassed(id) == true)
                {
                    c.NewLap(id);
                }
            }
            return true;
        }
        // A checkpoint wasn't passed in the right direction
        else
        {
            return false;
        }

    }

    // Don't need to know the details of this.  Just that it takes a time (i.e. 543.344, which is 543 seconds and a fraction of another) and converts it to hours minutes seconds and milliseconds for use in our HUD.
    private string GetConvertedTime(float time)
    {
        if (time == 0)
        {
            return "--:--:--.---";
        }

        int hours = 0;
        int minutes = 0;
        int seconds = 0;
        int milliseconds = 0;

        string hoursS = "";
        string minutesS = "";
        string secondsS = "";
        string millisecondsS = "";

        int leftSide = (int)time;
        int rightSide = (int)((time - leftSide) * 1000);

        hours = leftSide / 36000;
        minutes = leftSide / 60;
        seconds = leftSide % 60;
        milliseconds = rightSide;

        // Hours
        if (hours == 0)
        {
            hoursS = "00";
        }
        else if (hours < 10)
        {
            hoursS = "0" + hours;
        }
        else
        {
            hoursS = "" + hours;
        }

        // Minutes
        if (minutes == 0)
        {
            minutesS = "00";
        }
        else if (minutes < 10)
        {
            minutesS = "0" + minutes;
        }
        else
        {
            minutesS = "" + minutes;
        }

        // Seconds
        if (seconds == 0)
        {
            secondsS = "00";
        }
        else if (seconds < 10)
        {
            secondsS = "0" + seconds;
        }
        else
        {
            secondsS = "" + seconds;
        }

        // Milliseconds
        if (milliseconds == 0)
        {
            millisecondsS = "000";
        }
        else
        {
            millisecondsS = "" + milliseconds;
        }

        return hoursS + ":" + minutesS + ":" + secondsS + "." + millisecondsS;
    }

    // Based on the status of our race, our labels will be updated accordingly
    public void UpdateText()
    {
        if (currentLap == numLaps && raceOver == false)
        {
            //bottomLeftText.text = "Last Lap";
        }
        else if (currentLap == numLaps && raceOver == true)
        {
            bottomLeftText.text = "";
            directMiddleText.text = "Finish!";
        }

        // If the race is starting, don't display laps or overall last and current times
        if (isStarting)
        {
            leftText.text = "";
            rightText.text = "";
        }
        // Display our text.  This can be modified to display Last Laps time only when we have an actual time to display (i.e. after the first lap).
        else
        {
            leftText.text = overallTimeString + GetConvertedTime(overallTime) + "\n" +
                            lastString + GetConvertedTime(lastTime) + "\n" +
                            currentString + GetConvertedTime(currentTime);
            rightText.text = lapsString + " " + currentLap + " / " + numLaps + "\n";// + hpString + player.GetComponent<Player>().health.ToString();

            string place = pm.GetPlace(GetID()).ToString();
            
            switch (place)
            {
                case "1":
                    place += "st";
                    break;
                case "2":
                    place += "nd";
                    break;
                case "3":
                    place += "rd";
                    break;
                case "4":
                    place += "th";
                    break;
            }

            bottomLeftText.text = place;
        }
    }

    // Handles displayed the countdown text at the start of the race
    public void DisplayStartText()
    {
        if (tempTime <= countdownPerNumber * 1 && tempTime > 0)
        {
            directMiddleText.text = ourStringsToDisplay[0];
        }
        else if (tempTime <= countdownPerNumber * 2 && tempTime > countdownPerNumber * 1)
        {
            directMiddleText.text = ourStringsToDisplay[1];
        }
        else if (tempTime <= countdownPerNumber * 3 && tempTime > countdownPerNumber * 2)
        {
            directMiddleText.text = ourStringsToDisplay[2];
        }
        else if (tempTime <= countdownPerNumber * 4 && tempTime > countdownPerNumber * 3)
        {
            directMiddleText.text = ourStringsToDisplay[3];
        }
        else
        {
            directMiddleText.text = "";//player.GetComponent<Player>().GetID() + "";
        }
    }

    public void FinishFlythrough()
    {
        playingFlythrough = false;
    }

    void Update ()
    {
        //if (Input.GetKeyDown(KeyCode.Space)) tempStart = true;
        //if (!tempStart) return;
        
        if (playingFlythrough) return;

        // If we're paused track how long we're paused for so our overall race time doesn't get screwed up.
        if (StateManager.instance.TheState == State.Paused)
        {
            pauseTime += Time.deltaTime;
        }
        else
        {
            // Using Time.timeSinceLevelLoad is not the best approach.  May want to update later.

            if (!raceOver && !isStarting) // Time the race!
            {
                overallTime = Time.timeSinceLevelLoad - countdownAtStart + countdownPerNumber - pauseTime;
                currentTime = overallTime - allButThisLapTime;
                UpdateText();
            }
            else if (isStarting && tempTime < countdownAtStart) // Countdown to start the race!
            {
                //speed.SetActive(false);
                //charge.SetActive(false);
                tempTime = Time.timeSinceLevelLoad - flythroughTime - pauseTime;

                DisplayStartText();
            }

            if (tempTime > countdownAtStart - countdownPerNumber && tempTime < countdownAtStart) // Allows the player to start on the last string that's displayed
            {
                tempTime = Time.timeSinceLevelLoad - pauseTime;
                player.GetComponent<InputHandler>().TurnOn();
                isStarting = false;
                DisplayStartText();
                //speed.SetActive(true);
                //charge.SetActive(true);
            }
        }
    }
}
