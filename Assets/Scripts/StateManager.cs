//using UnityEngine.SceneManagement;
using UnityEngine;

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

    public Material[] possibleCharSelection; // Contains possible characters to choose from
    public Material[] actualCharSelection; // Will hold our actual characters to choose from for this scene only
    public static Material[] GlobalCharSelection; // Holds our actual characters between scenes.  This is set on the CharacterSelection screen in the Main Menu.
    public static int charSelIndex = -1; // -1 until SaveCharacterSelection is called.  I should change this to a bool to avoid confusion, but eh.

    public Screen[] screensInScene;

    void Awake()
    {
        if (GlobalCharSelection != null)
        {
            Debug.Log("Material size: " + GlobalCharSelection.Length);
        }

        // This will always be -1 unless SaveCharSelections has been called.  And that's only ever called from the main menu, transitioning from the character select screen to the track selection screen.
        if (charSelIndex != -1)
        {
            // Update the playerCount so we can section off the screen appropriately and activate the required game objects.
            FindObjectOfType<PlayerSetup>().playerCount = numPlayers;

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


                Material[] t = new Material[1];
                //t[0] = GlobalCharSelection[players[i].playerNumber - 1]; // If for some reason we're P2 P3 or P4 and it's only 1 person playing, this doesn't work.
                t[0] = GlobalCharSelection[i]; // However, this does  
                playerObject.theMeshToChange.materials = t;
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
        }
    }

    // Update is called once per frame
    void Update ()
    {
        // If ANY controller has pressed start and we aren't on the main menu.  Toggle our pause screen.
        if (Input.GetButtonUp("Start") && !isMainMenu)
        {
            if (isPaused)
            {
                Unpause();
            }
            else
            {
                Pause();
            }
        }
    }

    public void Pause()
    {
        isPaused = true;

        // Store the momentum of each player, so we can continue with that momentum when we unpause.
        GameObject[] cs = GameObject.FindGameObjectsWithTag("Player");
        foreach (GameObject c in cs)
        {
            c.GetComponent<Move>().SaveMomentum();
        }

        SoundManager.instance.Pause();
        ScreenManager.instance.Pause();

    }

    public void Unpause()
    {
        isPaused = false;

        // Restore the momentum of each player
        GameObject[] cs = GameObject.FindGameObjectsWithTag("Player");
        foreach (GameObject c in cs)
        {
            c.GetComponent<Move>().RestoreMomentum();
        }

        SoundManager.instance.Unpause();
        ScreenManager.instance.Unpause();

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

        actualCharSelection = new Material[numPlayers];

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
