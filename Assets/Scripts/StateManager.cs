using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public enum State
{
    SplashScreen,
    PressStart,
    MainMenu,
    BeginningOfRace,
    InGame,
    EndOfRace,
    Paused,
    Credits
};

[RequireComponent(typeof(EventSystem))]
[RequireComponent(typeof(StandaloneInputModule))]
[RequireComponent(typeof(StandaloneInputModule))]
[RequireComponent(typeof(StandaloneInputModule))]
[RequireComponent(typeof(StandaloneInputModule))]
public class StateManager : MonoBehaviour
{
    public static StateManager instance;

    public static int numPlayers;

    public Font ourFont;

    private State theState;

    [Header("Visible For Debugging")]
    public ScreenType currentScreen;
    public GameObject[] screens;
    public GameObject mainMenu;
    public GameObject pressStartMenu;
    public GameObject optionsMenu;
    public GameObject characterMenu;
    public GameObject trackMenu;
    public GameObject controllerRegistrationMenu;
    public GameObject pauseMenu; // Only one pause menu, and we'll display an icon noting which player has control of the pause.

    public GameObject[] HUDs; // Multiple HUDs

    public GameObject creditScreen;

    public EventSystem eventHandler;
    public StandaloneInputModule p1Input;
    public StandaloneInputModule p2Input;
    public StandaloneInputModule p3Input;
    public StandaloneInputModule p4Input;

    public int playerWithControl = 1;
    public GameObject[] possibleCharSelection; // Contains possible characters to choose from
    public GameObject[] actualCharSelection; // Will hold our actual characters to choose from for this scene only
    [SerializeField]
    public static GameObject[] GlobalCharSelection; // Holds our actual characters between scenes.  This is set on the CharacterSelection screen in the Main Menu.
    public int[] indexedCharSelection;
    public static int[] GlobalIndexedSelection;
    public static int charSelIndex = -1; // -1 until SaveCharacterSelection is called.  I should change this to a bool to avoid confusion, but eh.

    public State TheState
    {
        get { return theState; }
        set
        {
            theState = value;

            Debug.Log("State: " + theState.ToString());

            if (theState == State.PressStart)
            {
                //currentScreen = ScreenType.Start;
                DeactivateAll();
                if (pressStartMenu != null) GetComponent<ScreenManager>().OpenPanel(pressStartMenu.GetComponent<Animator>());  //pressStartMenu.SetActive(true);
            }
            else if (theState == State.MainMenu)
            {
                //currentScreen = ScreenType.MainMenu;
                //DeactivateAll();
                if (mainMenu != null) GetComponent<ScreenManager>().OpenPanel(mainMenu.GetComponent<Animator>());
            }
            else if (theState == State.InGame)
            {
                //currentScreen = ScreenType.HUD;
                DeactivateAll();

                if (HUDs.Length > 0)
                {
                    foreach (GameObject g in HUDs)
                    {
                        g.SetActive(true);
                    }
                }

                Time.timeScale = 1.0f;
            }
            else if (theState == State.Paused)
            {
                currentScreen = ScreenType.PauseMenu;
                DeactivateAll();

                if(pauseMenu != null) pauseMenu.SetActive(true);

                Time.timeScale = 0.0f;
            }
            else if (theState == State.Credits)
            {
                currentScreen = ScreenType.Credits;
                LoadLevel("CreditScene");
            }
            else
            {
                Debug.Log("Unrecognized State: " + value.ToString());
            }
        }
    }

    // Use this for initialization
    void Awake()
    {
        eventHandler = GetComponent<EventSystem>();
        StandaloneInputModule[] sims = GetComponents<StandaloneInputModule>();
        foreach (StandaloneInputModule s in sims)
        {
            if (s.submitButton.CompareTo("P1_A") == 0)
            {
                p1Input = s;
            }
            else if (s.submitButton.CompareTo("P2_A") == 0)
            {
                p2Input = s;
            }
            else if (s.submitButton.CompareTo("P3_A") == 0)
            {
                p3Input = s;
            }
            else if (s.submitButton.CompareTo("P4_A") == 0)
            {
                p4Input = s;
            }
        }

        foreach (Text f in FindObjectsOfType<Text>())
        {
            f.font = ourFont; // Not working for some reason.  Sets all to no font, despite having a font
        }

        Screen[] screenTemp = FindObjectsOfType<Screen>();
        int length = screenTemp.Length;
        screens = new GameObject[length];
        for (int i = 0; i < length; i++)
        {
            screens[i] = screenTemp[i].gameObject;
        }

        foreach(Screen s in screenTemp)
        {
            if (s.screenType == ScreenType.Start) pressStartMenu = s.gameObject;
            else if (s.screenType == ScreenType.MainMenu) mainMenu = s.gameObject;
            else if (s.screenType == ScreenType.Options) optionsMenu = s.gameObject;
            else if (s.screenType == ScreenType.CharacterSelection) characterMenu = s.gameObject;
            else if (s.screenType == ScreenType.TrackSelection) trackMenu = s.gameObject;
            else if (s.screenType == ScreenType.Credits) creditScreen = s.gameObject;
            else if (s.screenType == ScreenType.ControllerRegistration) controllerRegistrationMenu = s.gameObject;
        }

        if (SceneManager.GetActiveScene().name.CompareTo("Menus") == 0)
        {
            TheState = State.PressStart;

            //foreach (GameObject g in screens)
            //{
            //    if (g.name.CompareTo("PressStart") == 0)
            //    {
            //        pressStartMenu = g;
            //        g.SetActive(true);
            //    }
            //    else if (g.name.CompareTo("MainMenu") == 0)
            //    {
            //        mainMenu = g;
            //        g.SetActive(false);
            //    }
            //    else if (g.name.CompareTo("OptionsMenu") == 0)
            //    {
            //        optionsMenu = g;
            //        g.SetActive(false);
            //    }
            //    else if (g.name.CompareTo("CharacterSelection") == 0)
            //    {
            //        characterMenu = g;
            //        g.SetActive(false);
            //    }
            //    else if (g.name.CompareTo("TrackSelection") == 0)
            //    {
            //        trackMenu = g;
            //        g.SetActive(false);
            //    }
            //    else
            //    {
            //        g.SetActive(false);
            //    }
            //}
        }
        else if (SceneManager.GetActiveScene().buildIndex > 2)// This allows us to treat every track the same in terms of the state manager.  Special treatment is given if it's the start screen, main menu, or credits.  Otherwise, this. // .GetActiveScene().name.CompareTo("Track1") == 0)
        {
            Debug.Log("InGame");

            GameObject[] temp = new GameObject[4];
            int count = 0;

            foreach (GameObject g in screens)
            {
                //if (g.name.CompareTo("PauseMenu") == 0)
                //{
                //    pauseMenu = g;
                //    g.SetActive(false);
                //}
                if (g.name.CompareTo("HUD") == 0)
                {
                    temp[count] = g;
                    count++;

                    g.SetActive(false);
                   
                }
                //else if (g.name.CompareTo("OptionsMenu") == 0)
                //{
                //    optionsMenu = g;
                //    g.SetActive(false);

                //}
                //else
                //{
                //    g.SetActive(false);
                //}
            }

            HUDs = temp;

            TheState = State.BeginningOfRace;
        }
        else if (SceneManager.GetActiveScene().name.CompareTo("CreditScene") == 0)
        {
            Debug.Log("Credit Scene");
            //TheState = State.Credits;
            creditScreen.GetComponent<Scroll>().StartScroll();
        }

        if (charSelIndex == -1)
        {
            instance = this;
        }
    }

    public void InstantiateDemCharacters(GameObject[] thePlayerObjects)
    {
        // This will always be -1 unless SaveCharSelections has been called.  And that's only ever called from the main menu, transitioning from the character select screen to the track selection screen.
        if (charSelIndex != -1)
        {
            // Update the playerCount so we can section off the screen appropriately and activate the required game objects.
            //FindObjectOfType<RaceSetup>().playerCount = numPlayers;

            // Just realized, this section below may need to be called after PlayerSetup has done it's thing.  FindObjectsOfType<Player>() only finds "active" game objects.
            //Player[] players = FindObjectsOfType<Player>();
            Player[] players = new Player[thePlayerObjects.Length];
            for (int i = 0; i < thePlayerObjects.Length; i++)
            {
                players[i] = thePlayerObjects[i].GetComponent<Player>();
            }

            Player playerObject = players[0];

            Debug.Log("Player Objects: " + players.Length);
            for (int i = 0; i < numPlayers; i++)
            {
                // Find the correct instance of the player script
                for (int j = 0; j < players.Length; j++)
                {
                    if (players[j].playerNumber == i + 1)
                    {
                        playerObject = players[j];
                        Debug.Log("P" + players[j].playerNumber);
                    }
                }

                playerObject.theCharacter = GlobalCharSelection[i];

                playerObject.gameObject.GetComponent<CharacterSelector>().CreateCharacter(GlobalIndexedSelection[i]);
            }
        }

        instance = this;
    }

    // Update is called once per frame
    void Update()
    {
        if (TheState == State.PressStart && Input.anyKey)
        {
            playerWithControl = 1;
            //Enable(1);
            TheState = State.MainMenu;
        }

        // For the in game logic, check for something like  vvv   on each player
        // if (Input.GetButtonDown(P1_Start) && TheState == State.InGame) { //We weren't paused, but we are now and P1 has control }
        // then for pause logic we can disable every standalone input module except for the respective module for our player allowing for easy navigation through the menus.  Or we can reassign variables on the standalone input module, but I think it's easier to disable and enable.

        if (TheState == State.InGame)
        {
            if (Input.GetButtonDown("P1_Start")) Pause(1);
            else if (Input.GetButtonDown("P2_Start")) Pause(2);
            else if (Input.GetButtonDown("P3_Start")) Pause(3);
            else if (Input.GetButtonDown("P4_Start")) Pause(4);
        }
        else if (TheState == State.Paused)
        {
            if (Input.GetButtonDown("P1_Start")) Unpause(1);
            else if (Input.GetButtonDown("P2_Start")) Unpause(2);
            else if (Input.GetButtonDown("P3_Start")) Unpause(3);
            else if (Input.GetButtonDown("P4_Start")) Unpause(4);
        } 
        else if (TheState == State.MainMenu)
        {
            if (Input.GetButtonDown("P1_B")) GoBack(1);
        }
    }

    public void Options(int playerID)
    {
        if (playerID == playerWithControl)
        {
            //currentScreen = ScreenType.Options;
            DeactivateAll();
            optionsMenu.SetActive(true);
        }
    }

    public void ControllerRegistration()
    {
        GetComponent<ScreenManager>().OpenPanel(controllerRegistrationMenu.GetComponent<Animator>());
    }

    public void CharacterSelection()
    {
        GetComponent<ScreenManager>().OpenPanel(characterMenu.GetComponent<Animator>());
    }

    public void TrackSelection()
    {
        GetComponent<ScreenManager>().OpenPanel(trackMenu.GetComponent<Animator>());
    }

    public void Pause(int playerID)
    {
        if (TheState == State.InGame)
        {
            playerWithControl = playerID;
            Enable(playerID);
            TheState = State.Paused;
        }
    }

    public void Unpause(int playerID)
    {
        if (TheState == State.Paused && playerWithControl == playerID)
        {
            playerWithControl = 0;
            TheState = State.InGame;

            p1Input.DeactivateModule();
            p2Input.DeactivateModule();
            p3Input.DeactivateModule();
            p4Input.DeactivateModule();
        }
    }

    public void GoBack(int playerID)
    {
        if (TheState == State.Paused && playerWithControl == playerID)
        {
            if (currentScreen == ScreenType.Options) TheState = State.Paused;
            else if (currentScreen == ScreenType.PauseMenu) Unpause(playerID);
        }
        else if (TheState == State.MainMenu)
        {
            if (currentScreen == ScreenType.Options || currentScreen == ScreenType.ControllerRegistration || currentScreen == ScreenType.Credits) GetComponent<ScreenManager>().OpenPanel(mainMenu.GetComponent<Animator>()); // Not sure if this does what I intend as our state is already MainMenu.
            else if (currentScreen == ScreenType.TrackSelection) CharacterSelection();
            else if (currentScreen == ScreenType.CharacterSelection) ControllerRegistration();
        }
    }

    public void Enable(int playerID)
    {
        if (playerID == 1)
        {
            p1Input.ActivateModule();
            p2Input.DeactivateModule();
            p3Input.DeactivateModule();
            p4Input.DeactivateModule();
        }
        else if (playerID == 2)
        {
            p1Input.DeactivateModule();
            p2Input.ActivateModule();
            p3Input.DeactivateModule();
            p4Input.DeactivateModule();
        }
        else if (playerID == 3)
        {
            p1Input.DeactivateModule();
            p2Input.DeactivateModule();
            p3Input.ActivateModule();
            p4Input.DeactivateModule();
        }
        else if (playerID == 4)
        {
            p1Input.DeactivateModule();
            p2Input.DeactivateModule();
            p3Input.DeactivateModule();
            p4Input.ActivateModule();
        }
    }

    public void StartCredits()
    {
        TheState = State.Credits;
    }

    private void DeactivateAll()
    {
        foreach (GameObject g in screens)
        {
            g.SetActive(false);
        }
    }

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
        indexedCharSelection = new int[numPlayers];

        // Assign the correct "character" to our player based on their selection
        foreach (SelectCharacter c in characters)
        {
            if (c.isActive)
            {
                // c.playerNumber - 1 may have to changed to an increment.  If there's 2 players but 3 controllers there's a possibility that player 2 will actually be player 3's controller.  We can probably
                // remedy this by adjusting the prefix of the Player script in the other scene based on which controller player 2 is actually using.
                print(c.playerNumber + " " + c.currentObject);
                actualCharSelection[c.playerNumber - 1] = possibleCharSelection[c.currentObject];
                indexedCharSelection[c.playerNumber - 1] = c.currentObject;
            }
        }

        // Make note of the fact that we've been through this method. Used in future scenes.  Should be changed to a bool.
        charSelIndex = 0;

        // Save our players character selections for use in later scenes.
        GlobalCharSelection = actualCharSelection;
        GlobalIndexedSelection = indexedCharSelection;

        Debug.Log("Actual character count: " + playerCount + " Size: " + actualCharSelection.Length);
    }

    public void LoadLevel(string name)
    {
        SceneManager.LoadScene(name);
    }

    public void Quit()
    {
        Application.Quit();
    }
}


////using UnityEngine.SceneManagement;
//using UnityEngine;
//using UnityEngine.EventSystems;

//public class StateManager : MonoBehaviour
//{
//    public static StateManager instance;
//    public bool isMainMenu;
//    public bool isTrack1;

//    public bool isPaused;

//    public bool raceOver;

//    public static int numPlayers = 0;

//    public bool hasPlayer1 = false;
//    public bool hasPlayer2 = false;
//    public bool hasPlayer3 = false;
//    public bool hasPlayer4 = false;

//    public GameObject[] possibleCharSelection; // Contains possible characters to choose from
//    public GameObject[] actualCharSelection; // Will hold our actual characters to choose from for this scene only
//    [SerializeField]public static GameObject[] GlobalCharSelection; // Holds our actual characters between scenes.  This is set on the CharacterSelection screen in the Main Menu.
//    public static int charSelIndex = -1; // -1 until SaveCharacterSelection is called.  I should change this to a bool to avoid confusion, but eh.

//    public Screen[] screensInScene;

//    private int pauseUser;
//    private int pauseUserID;

//    void Awake()
//    {
//        if (GlobalCharSelection != null)
//        {
//            Debug.Log("Num Characters: " + GlobalCharSelection.Length);
//        }

//        // This will always be -1 unless SaveCharSelections has been called.  And that's only ever called from the main menu, transitioning from the character select screen to the track selection screen.
//        if (charSelIndex != -1)
//        {
//            // Update the playerCount so we can section off the screen appropriately and activate the required game objects.
//            //FindObjectOfType<RaceSetup>().playerCount = numPlayers;

//            // Just realized, this section below may need to be called after PlayerSetup has done it's thing.  FindObjectsOfType<Player>() only finds "active" game objects.
//            Player[] players = FindObjectsOfType<Player>();

//            Player playerObject = players[0];

//            Debug.Log("Player Objects: " + players.Length);
//            for (int i = 0; i < numPlayers; i++)
//            {
//                // Find the correct instance of the player script
//                for (int j = 0; j < players.Length; j++)
//                {
//                    // This may be the best place to "reassign" controllers.  Not sure, just a thought.
//                    if (players[j].playerNumber == i+1)
//                    {
//                        playerObject = players[j];
//                        Debug.Log("P" + players[j].playerNumber);
//                    }
//                }

//                //Debug.Log("P" + players[i].playerNumber);  Moved to the if statement directly above.  May have been incorrectly reporting the players number.
//                playerObject.theCharacter = GlobalCharSelection[i];
//            }
//        }
//        else
//        {
//            //GlobalCharSelection = possibleCharSelection;  // reworked, don't need
//        }

//        instance = this;
//    }

//    // Use this for initialization
//    void Start ()
//    {
//        screensInScene = Resources.FindObjectsOfTypeAll<Screen>();

//        pauseUser = 0;

//        // If the current scene name is "Menus" then set the appropriate variables
//        if (UnityEngine.SceneManagement.SceneManager.GetActiveScene().name.CompareTo("Menus") == 0)
//        {
//            isMainMenu = true;
//            foreach (Screen s in screensInScene)
//            {
//                // Find the screen that's the root and enable it.
//                if (s.isRoot)
//                {
//                    ScreenManager.instance.EnableScreen(s.gameObject);
//                }
//                // Any screen that isn't the root, is disabled.
//                else
//                {
//                    s.gameObject.SetActive(false);
//                }
//            }
//        }
//        else if (UnityEngine.SceneManagement.SceneManager.GetActiveScene().name.CompareTo("Track1") == 0)
//        {
//            isTrack1 = true;

//            SoundManager.instance.PlayTrackSong();
//        }
//        // Any other scene but the main menu will enter this else statement
//        else
//        {
//            isMainMenu = false;

//            foreach (Screen s in screensInScene)
//            {
//                // Find the screen that's the root and enable it.
//                if (s.isRoot)
//                {
//                    //ScreenManager.instance.EnableScreen(s.gameObject);
//                }
//                // Any screen that isn't the root, is disabled.
//                else
//                {
//                    //s.gameObject.SetActive(false);
//                }
//            }
//        }
//    }

//    public void SetPauseUser(int p)
//    {
//        pauseUser = p;
//        pauseUserID = p;
//    }

//    public bool RequestPausePermission(int p)
//    {
//        return pauseUserID == p || ScreenManager.instance.currentScreen.GetComponent<Screen>().isPublicMenu;
//    }

//    // Update is called once per frame
//    void Update ()
//    {
//        // If ANY controller has pressed start and we aren't on the main menu.  Toggle our pause screen.
//        if (pauseUser != 0 && !isMainMenu)
//        {
//            if (isPaused)
//            {
//                Unpause(pauseUser);
//            }
//            else
//            {
//                Pause(pauseUser);
//            }
//        }
//    }

//    public void Pause(int p)
//    {
//        isPaused = true;

//        // Store the momentum of each player, so we can continue with that momentum when we unpause.
//        GameObject[] cs = GameObject.FindGameObjectsWithTag("Player");
//        foreach (GameObject c in cs)
//        {
//            c.GetComponent<Move>().SaveMomentum();
//        }

//        //SoundManager.instance.Pause();
//        /*EventSystem e = EventSystem.current;
//        StandaloneInputModule s = e.gameObject.GetComponent<StandaloneInputModule>();
//        s.submitButton = "P" + p.ToString() + "_A";
//        s.cancelButton = "P" + p.ToString() + "_B";
//        s.horizontalAxis = "P" + p.ToString() + "_Horizontal";
//        s.verticalAxis = "P" + p.ToString() + "_Vertical";*/
//        ScreenManager.instance.Pause(p);
//        pauseUser = 0;

//        SoundManager.instance.Pause();
//    }

//    public void Unpause(int p)
//    {
//        isPaused = false;

//        // Restore the momentum of each player
//        GameObject[] cs = GameObject.FindGameObjectsWithTag("Player");
//        foreach (GameObject c in cs)
//        {
//            c.GetComponent<Move>().RestoreMomentum();
//        }

//        //SoundManager.instance.Unpause();
//        ScreenManager.instance.Unpause(p);
//        pauseUser = 0;

//        SoundManager.instance.Unpause();
//    }

//    // Called when we move from the CharacterSelect screen to the Track screen.
//    public void SaveCharSelections()
//    {
//        // Find all our SelectCharacter scripts to retrieve relevant data from them
//        SelectCharacter[] characters = Resources.FindObjectsOfTypeAll<SelectCharacter>();

//        Debug.Log("Character count: " + characters.Length);

//        int playerCount = 0;

//        foreach (SelectCharacter c in characters)
//        {
//            if (c.isActive)
//            {
//                playerCount++;
//            }
//        }

//        // This will hold our actual player count, and it's coded this way in case a player decides to back out of the race (which isn't currently supported).
//        numPlayers = playerCount;

//        actualCharSelection = new GameObject[numPlayers];

//        // Assign the correct "character" to our player based on their selection
//        foreach (SelectCharacter c in characters)
//        {
//            if (c.isActive) 
//            {
//                // c.playerNumber - 1 may have to changed to an increment.  If there's 2 players but 3 controllers there's a possibility that player 2 will actually be player 3's controller.  We can probably
//                // remedy this by adjusting the prefix of the Player script in the other scene based on which controller player 2 is actually using.
//                print(c.playerNumber + " " + c.currentObject);
//                actualCharSelection[c.playerNumber - 1] = possibleCharSelection[c.currentObject];
//            }
//        }

//        // Make note of the fact that we've been through this method. Used in future scenes.  Should be changed to a bool.
//        charSelIndex = 0;

//        // Save our players character selections for use in later scenes.
//        GlobalCharSelection = actualCharSelection;

//        Debug.Log("Actual character count: " + playerCount + " Size: " + actualCharSelection.Length);
//    }
//}
