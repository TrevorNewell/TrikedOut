//using UnityEngine.SceneManagement;
using UnityEngine;
using UnityEngine.EventSystems;

public class StateManager : MonoBehaviour
{
    public static StateManager instance;
    public bool isMainMenu;
    public bool isPaused;

    public bool raceOver;

    public static int numPlayers = 0;

    public bool hasPlayer1 = false;
    public bool hasPlayer2 = false;
    public bool hasPlayer3 = false;
    public bool hasPlayer4 = false;

    public GameObject[] possibleCharSelection; // Contains possible characters to choose from
    public GameObject[] actualCharSelection; // Will hold our actual characters to choose from for this scene only
    [SerializeField]public static GameObject[] GlobalCharSelection; // Holds our actual characters between scenes.  This is set on the CharacterSelection screen in the Main Menu.
    public static int charSelIndex = -1; // -1 until SaveCharacterSelection is called.  I should change this to a bool to avoid confusion, but eh.

    public Screen[] screensInScene;

    private int pauseUser;
    private int pauseUserID;

    void Awake()
    {
        if (GlobalCharSelection != null)
        {
            Debug.Log("Num Characters: " + GlobalCharSelection.Length);
        }

        // This will always be -1 unless SaveCharSelections has been called.  And that's only ever called from the main menu, transitioning from the character select screen to the track selection screen.
        if (charSelIndex != -1)
        {
            // Update the playerCount so we can section off the screen appropriately and activate the required game objects.
            //FindObjectOfType<RaceSetup>().playerCount = numPlayers;

            // Just realized, this section below may need to be called after PlayerSetup has done it's thing.  FindObjectsOfType<Player>() only finds "active" game objects.
            Player[] players = FindObjectsOfType<Player>();
            
            Player playerObject = players[0];

            Debug.Log("Player Objects: " + players.Length);
            for (int i = 0; i < numPlayers; i++)
            {
                // Find the correct instance of the player script
                for (int j = 0; j < players.Length; j++)
                {
                    // This may be the best place to "reassign" controllers.  Not sure, just a thought.
                    if (players[j].playerNumber == i+1)
                    {
                        playerObject = players[j];
                        Debug.Log("P" + players[j].playerNumber);
                    }
                }

                //Debug.Log("P" + players[i].playerNumber);  Moved to the if statement directly above.  May have been incorrectly reporting the players number.
                playerObject.theCharacter = GlobalCharSelection[i];
            }
        }
        else
        {
            //GlobalCharSelection = possibleCharSelection;  // reworked, don't need
        }

        instance = this;
    }

    // Use this for initialization
    void Start ()
    {
        screensInScene = Resources.FindObjectsOfTypeAll<Screen>();

        pauseUser = 0;

        // If the current scene name is "Menus" then set the appropriate variables
        if (UnityEngine.SceneManagement.SceneManager.GetActiveScene().name.CompareTo("Menus") == 0)
        {
            isMainMenu = true;
            foreach (Screen s in screensInScene)
            {
                // Find the screen that's the root and enable it.
                if (s.isRoot)
                {
                    ScreenManager.instance.EnableScreen(s.gameObject);
                }
                // Any screen that isn't the root, is disabled.
                else
                {
                    s.gameObject.SetActive(false);
                }
            }
        }
        // Any other scene but the main menu will enter this else statement
        else
        {
            isMainMenu = false;

            foreach (Screen s in screensInScene)
            {
                // Find the screen that's the root and enable it.
                if (s.isRoot)
                {
                    ScreenManager.instance.EnableScreen(s.gameObject);
                }
                // Any screen that isn't the root, is disabled.
                else
                {
                    s.gameObject.SetActive(false);
                }
            }
        }
    }

    public void SetPauseUser(int p)
    {
        pauseUser = p;
        pauseUserID = p;
    }

    public bool RequestPausePermission(int p)
    {
        return pauseUserID == p;
    }

    // Update is called once per frame
    void Update ()
    {
        // If ANY controller has pressed start and we aren't on the main menu.  Toggle our pause screen.
        if (pauseUser != 0 && !isMainMenu)
        {
            if (isPaused)
            {
                Unpause(pauseUser);
            }
            else
            {
                Pause(pauseUser);
            }
        }
    }

    public void Pause(int p)
    {
        isPaused = true;

        // Store the momentum of each player, so we can continue with that momentum when we unpause.
        GameObject[] cs = GameObject.FindGameObjectsWithTag("Player");
        foreach (GameObject c in cs)
        {
            c.GetComponent<Move>().SaveMomentum();
        }

        //SoundManager.instance.Pause();
        EventSystem e = EventSystem.current;
        StandaloneInputModule s = e.gameObject.GetComponent<StandaloneInputModule>();
        s.submitButton = "P" + p.ToString() + "_A";
        s.cancelButton = "P" + p.ToString() + "_B";
        s.horizontalAxis = "P" + p.ToString() + "_Horizontal";
        s.verticalAxis = "P" + p.ToString() + "_Vertical";
        ScreenManager.instance.Pause(p);
        pauseUser = 0;

        SoundManager.instance.Pause();
    }

    public void Unpause(int p)
    {
        isPaused = false;

        // Restore the momentum of each player
        GameObject[] cs = GameObject.FindGameObjectsWithTag("Player");
        foreach (GameObject c in cs)
        {
            c.GetComponent<Move>().RestoreMomentum();
        }

        //SoundManager.instance.Unpause();
        ScreenManager.instance.Unpause(p);
        pauseUser = 0;

        SoundManager.instance.Unpause();
    }

    // Called when we move from the CharacterSelect screen to the Track screen.
    public void SaveCharSelections()
    {
        // Find all our SelectCharacter scripts to retrieve relevant data from them
        SelectCharacter[] characters = Resources.FindObjectsOfTypeAll<SelectCharacter>();

        Debug.Log("Character count: " + characters.Length);

        int playerCount = 0;

        foreach (SelectCharacter c in characters)
        {
            if (c.isActive)
            {
                playerCount++;
            }
        }

        // This will hold our actual player count, and it's coded this way in case a player decides to back out of the race (which isn't currently supported).
        numPlayers = playerCount;

        actualCharSelection = new GameObject[numPlayers];

        // Assign the correct "character" to our player based on their selection
        foreach (SelectCharacter c in characters)
        {
            if (c.isActive) 
            {
                // c.playerNumber - 1 may have to changed to an increment.  If there's 2 players but 3 controllers there's a possibility that player 2 will actually be player 3's controller.  We can probably
                // remedy this by adjusting the prefix of the Player script in the other scene based on which controller player 2 is actually using.
                actualCharSelection[c.playerNumber - 1] = possibleCharSelection[c.currentObject];
            }
        }

        // Make note of the fact that we've been through this method. Used in future scenes.  Should be changed to a bool.
        charSelIndex = 0;

        // Save our players character selections for use in later scenes.
        GlobalCharSelection = actualCharSelection;

        Debug.Log("Actual character count: " + playerCount + " Size: " + actualCharSelection.Length);
    }
}
