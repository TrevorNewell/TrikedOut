using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;
using UnityEngine.SceneManagement;

public class ScreenManager : MonoBehaviour
{
    public static ScreenManager instance;
    public EventSystem eventHandler;

    // These two parameters work great if the screen only goes one level deep.  However, if I go say 3 levels deep and I navigate back (Using "B" on the controller) it just swaps between the last two screens.  I need to update this but right now it isn't a serious issue..
    public GameObject lastScreen;
    public GameObject currentScreen;

    public GameObject pauseScreen;

    public GameObject HUD;

    //public float delay = 0.2f;

    void Awake()
    {
        instance = this;
    }

	// Use this for initialization
	void Start ()
    {
        eventHandler = FindObjectOfType<EventSystem>();
    }

    // Update is called once per frame
    void Update ()
    {
        if (Input.GetButtonUp("B") && (StateManager.instance.isPaused || StateManager.instance.isMainMenu))
        {
            if (currentScreen != null)
            {
                if (currentScreen.GetComponent<Screen>().isRoot && currentScreen.GetComponent<Screen>().disableRootOnBack)
                {
                    DisableCurrentScreen();
                }
                else if (currentScreen.GetComponent<Screen>().isRoot && !currentScreen.GetComponent<Screen>().disableRootOnBack)
                {
                    // Do nothing
                }
                else
                {
                    SwitchScreens(currentScreen, lastScreen);
                }
            }
        }
	}


    public void Pause()
    {
        StateManager.instance.isPaused = true;
        HUD.SetActive(false);
        GameObject.FindGameObjectWithTag("Player").GetComponent<Move>().SaveMomentum();
        pauseScreen.SetActive(true);
        currentScreen = pauseScreen;
        ScreenManager.instance.eventHandler.SetSelectedGameObject(pauseScreen.GetComponent<Screen>().firstActive.gameObject);
    }

    public void Unpause()
    {
        StateManager.instance.isPaused = false;
        HUD.SetActive(true);
        GameObject.FindGameObjectWithTag("Player").GetComponent<Move>().RestoreMomentum();
        pauseScreen.SetActive(false);
    }


    public void DisableCurrentScreen()
    {
        DisableScreen(currentScreen);
    }

    public void SwitchScreens(GameObject from, GameObject to)
    {
        to.SetActive(true);
        currentScreen = to;
        ScreenManager.instance.eventHandler.SetSelectedGameObject(to.GetComponent<Screen>().firstActive.gameObject);

        lastScreen = from;
        from.SetActive(false);
    }

    public void EnableScreen(GameObject enable)
    {
        enable.SetActive(true);
        currentScreen = enable;
    }

    public void DisableScreen(GameObject disable)
    {
        disable.SetActive(true);
    }

    public void LoadScene(string sceneName)
    {
        // Transition out here

        SceneManager.LoadScene(sceneName);
    }

    public void QuitApplication()
    {
        Application.Quit();
    }
}
