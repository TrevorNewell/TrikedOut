using UnityEngine;
using System.Collections;
using UnityEditor;
using UnityEditor.SceneManagement;

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

    public Material[] possibleCharSelection;
    public Material[] actualCharSelection;
    public static Material[] GlobalCharSelection;
    public static int charSelIndex = -1;

    public Screen[] screensInScene;

    // ? Others ?

    void Awake()
    {
        if (GlobalCharSelection != null)
        {
            Debug.Log("Material size: " + GlobalCharSelection.Length);
        }

        if (charSelIndex != -1)
        {
            //possibleCharSelection = new Material[GlobalCharSelection.Length];
            //possibleCharSelection = GlobalCharSelection;
            FindObjectOfType<PlayerSetup>().playerCount = numPlayers;

            Player[] players = FindObjectsOfType<Player>();

            Player playerObject = players[0];

            Debug.Log("Player Objects: " + players.Length);
            for (int i = 0; i < numPlayers; i++)
            {
                for (int j = 0; j < players.Length; j++)
                {
                    if (players[j].playerNumber == i+1)
                    {
                        playerObject = players[j];
                    }
                }

                Debug.Log("P" + players[i].playerNumber);

                Material[] t = new Material[1];
                //t[0] = GlobalCharSelection[players[i].playerNumber - 1]; // If for some reason we're P2 P3 or P4 and it's only 1 person playing, this doesn't work.
                t[0] = GlobalCharSelection[i]; // However, this does  
                playerObject.theMeshToChange.materials = t;
            }

            //foreach (Player p in players)
            //{
            //    GameObject playerObject = p.gameObject;

            //    Debug.Log("P" + p.playerNumber);
            //    Material[] t = new Material[1];
            //    t[0] = GlobalCharSelection[p.playerNumber - 1];
            //    playerObject.GetComponent<MeshRenderer>().materials = t;
            //}
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

        if (EditorSceneManager.GetActiveScene().name.CompareTo("Menus") == 0)
        {
            isMainMenu = true;
            foreach (Screen s in screensInScene)
            {
                if (s.isRoot)
                {
                    ScreenManager.instance.EnableScreen(s.gameObject);
                }
                else
                {
                    s.gameObject.SetActive(false);
                }
            }
        }
        else
        {
            isMainMenu = false;
        }
    }

    // Update is called once per frame
    void Update ()
    {
        if (Input.GetButtonUp("Start") && !isMainMenu)
        {
            if (isPaused)
            {
                isPaused = false;
                ScreenManager.instance.Unpause();
            }
            else
            {
                isPaused = true;
                ScreenManager.instance.Pause();
            }
        }

        if (Input.GetButtonUp("P1_A") && isMainMenu && !hasPlayer1)
        {
            hasPlayer1 = true;
            numPlayers++;
            Debug.Log("Player 1 Joystick");
            SelectCharacter[] items = FindObjectsOfType<SelectCharacter>();

            foreach (SelectCharacter s in items)
            {
                if (s.playerNumber == 1)
                {
                    s.Activate();
                }
            }
        }
        if (Input.GetButtonUp("P2_A") && isMainMenu && !hasPlayer2)
        {
            hasPlayer2 = true;
            numPlayers++;
            Debug.Log("Player 2 Joystick");
            SelectCharacter[] items = FindObjectsOfType<SelectCharacter>();

            foreach (SelectCharacter s in items)
            {
                if (s.playerNumber == 2)
                {
                    s.Activate();
                }
            }
        }
        if (Input.GetButtonUp("P3_A") && isMainMenu && !hasPlayer3)
        {
            hasPlayer3 = true;
            numPlayers++;
            Debug.Log("Player 3 Joystick");
            SelectCharacter[] items = FindObjectsOfType<SelectCharacter>();

            foreach (SelectCharacter s in items)
            {
                if (s.playerNumber == 3)
                {
                    s.Activate();
                }
            }
        }
        if (Input.GetButtonUp("P4_A") && isMainMenu && !hasPlayer4)
        {
            hasPlayer4 = true;
            numPlayers++;
            Debug.Log("Player 4 Joystick");
            SelectCharacter[] items = FindObjectsOfType<SelectCharacter>();

            foreach (SelectCharacter s in items)
            {
                if (s.playerNumber == 4)
                {
                    s.Activate();
                }
            }
        }
    }

    public void SaveCharSelections()
    {
        SelectCharacter[] characters = Resources.FindObjectsOfTypeAll<SelectCharacter>();

        Debug.Log("Character count: " + characters.Length);
        int playerCount = 0;

        foreach (SelectCharacter c in characters)
        {
            if (c.isActive)
            {
                playerCount++;
                // Save c.playerNumbers c.currentObject from array of material.  Material, material[c.currentObject].
            }
        }

        numPlayers = playerCount;

        actualCharSelection = new Material[numPlayers];

        foreach (SelectCharacter c in characters)
        {
            if (c.isActive) 
            {
                // c.playerNumber - 1 may have to changed to an increment.  If there's 2 players but 3 controllers there's a possibility that player 2 will actually be player 3's controller.  We can probably
                // remedy this by adjusting the prefix of the Player script in the other scene based on which controller player 2 is actually using.
                actualCharSelection[c.playerNumber - 1] = possibleCharSelection[c.currentObject];
            }
        }

        charSelIndex = 0;

        GlobalCharSelection = actualCharSelection;

        Debug.Log("Actual character count: " + playerCount + " Size: " + actualCharSelection.Length);
    }
}
