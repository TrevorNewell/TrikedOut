using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class RaceManager : MonoBehaviour
{
    [Header("Checkpoint Variables")]
    public bool disableCheckpointsOnStart = true;

    public int numLaps = 0;
    private int currentLap = 1;

    public Checkpoint[] checkpoints; // We only care about the status of hasPassed and isEnd.
    private int numCheckpoints = 0;

    private bool raceOver = false;

    private float[] laps;

    public int countdownAtStart = 5; // This divided by 4 is how long each number will stay on screen at the start of the game.

    public bool isStarting = true;
    public int originalFontSize;
    public float countdownPerNumber;
    public int currentDisplay = 0;
    public string[] ourStringsToDisplay;
    public float tempTime;

    [Header("UI Variables")]
    public Text leftText;
    public Text bottomLeftText;
    public Text directMiddleText;
    public Text rightText;

    public string overallTimeString;
    public string currentString;
    public string lastString;
    public string lapsString;
    private string statusString;

    private float overallTime;
    private float currentTime;
    private float lastTime;

    private float allButThisLapTime = 0;

    private float t;

	// Use this for initialization
	void Start ()
    {
        GameObject.FindObjectOfType<InputHandler>().enabled = false;

        bottomLeftText.text = "";
        directMiddleText.text = "";

        originalFontSize = directMiddleText.fontSize;
        ourStringsToDisplay = new string[4];
        ourStringsToDisplay[0] = "3";
        ourStringsToDisplay[1] = "2";
        ourStringsToDisplay[2] = "1";
        ourStringsToDisplay[3] = "GO";

        countdownPerNumber = (float)countdownAtStart / ourStringsToDisplay.Length;

        // Disable all renderers for our checkpoints.  We don't want the player to see that.
        if (disableCheckpointsOnStart)
        {
            GameObject[] theCheckpointGOs = GameObject.FindGameObjectsWithTag("Checkpoint");

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

        // Update our labels
        UpdateText();
    }

    /// <summary>
    ///     A message is sent upward from the final checkpoint to check for a valid lap.  We'll make sure the player has been through every checkpoint before putting him on the next lap.
    /// </summary>
    public bool CheckForLap()
    {
        //print("Checking for Lap.");

        // If we have only passed the last checkpoint, it means the race is just starting and we need to reset the variables for the end checkpoint.
        bool endPassed = false;
        bool anyOtherPassed = false;
        
        foreach (Checkpoint c in checkpoints)
        {
            if (c.hasPassed == true && c.isEnd == false)
            {
                anyOtherPassed = true;
            }
            else if (c.hasPassed == true && c.isEnd == true)
            {
                endPassed = true;
            }
        }

        if (anyOtherPassed == false && endPassed == true)
        {
            checkpoints[checkpoints.Length - 1].NewLap();
        }

        bool nextLap = true;
        // Make sure we've passed all checkpoints
        foreach (Checkpoint c in checkpoints)
        {
            if (c.hasPassed == false)
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
                GameObject.FindObjectOfType<InputHandler>().enabled = false;
                GameObject.FindGameObjectWithTag("Player").GetComponent<Move>().SlowCharacter();
            }

            foreach (Checkpoint c in checkpoints)
            {
                if (c.hasPassed == false)
                {
                    c.NewLap();
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

    public void UpdateText()
    {
        if (currentLap == numLaps && raceOver == false)
        {
            bottomLeftText.text = "Last Lap";
        }
        else if (currentLap == numLaps && raceOver == true)
        {
            bottomLeftText.text = "";
            directMiddleText.text = "Finish!";
        }

        if (isStarting)
        {
            leftText.text = "";
            rightText.text = "";
        }
        else
        {
            leftText.text = overallTimeString + GetConvertedTime(overallTime) + "\n" +
                            lastString + GetConvertedTime(lastTime) + "\n" +
                            currentString + GetConvertedTime(currentTime);
            rightText.text = lapsString + " " + currentLap + " / " + numLaps;
        }
    }

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
            directMiddleText.text = "";
        }
    }

    void Update ()
    {
        if (!raceOver && !isStarting) // Time the race!
        {
            overallTime = Time.time - countdownAtStart + countdownPerNumber;
            currentTime = overallTime - allButThisLapTime;

            UpdateText();
        }
        else if (isStarting && tempTime < countdownAtStart) // Countdown to start the race!
        {
            tempTime = Time.time;

            DisplayStartText();
        }

        if (tempTime > countdownAtStart - countdownPerNumber && tempTime < countdownAtStart) // Allows the player to start on the last string that's displayed
        {
            tempTime = Time.time;
            GameObject.FindObjectOfType<InputHandler>().enabled = true;
            isStarting = false;
            DisplayStartText();
        }
    }
}
