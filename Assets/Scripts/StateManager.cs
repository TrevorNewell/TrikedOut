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

    public Material[] charSelection;
    public static Material[] GlobalCharSelection;
    public static int charSelIndex;

    public Screen[] screensInScene;

    // ? Others ?

    void Awake()
    {
        if (charSelection.Length == 0)
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
        if (Input.GetButtonUp("Submit") && !isMainMenu) // Which button is start?!
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
    }

    public void SaveCharSelection(int index)
    {
        charSelIndex = index;
    }
}
