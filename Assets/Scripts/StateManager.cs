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

    public int numPlayers;
    public Material player1;
    public Material player2;
    public Material player3;
    public Material player4;

    public bool hasPlayer1 = false;
    public bool hasPlayer2 = false;
    public bool hasPlayer3 = false;
    public bool hasPlayer4 = false;

    public Material[] charSelection;
    public static Material[] GlobalCharSelection;
    public static int charSelIndex = -1;

    public Screen[] screensInScene;

    // ? Others ?

    void Awake()
    {
        if (charSelIndex != -1)
        {
            charSelection = new Material[GlobalCharSelection.Length];
            charSelection = GlobalCharSelection;

            GameObject f = FindObjectOfType<Player>().gameObject;

            Material[] t = new Material[1];
            t[0] = charSelection[charSelIndex-1];
            f.GetComponent<MeshRenderer>().materials = t;
        }
        else
        {
            GlobalCharSelection = charSelection;
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

    public void SaveCharSelection(int index)
    {
        int charNumber = 0;

        if (charNumber == 0)
        {
            player1 = charSelection[index];
        }
        else if(charNumber == 1)
        {
            player2 = charSelection[index];
        }
        else if (charNumber == 2)
        {
            player3 = charSelection[index];
        }
        else if (charNumber == 3)
        {
            player4 = charSelection[index];
        }
        else
        {
            Debug.Log("Invalid Character Number");
        }

        charSelIndex += charSelIndex;
    }
}
