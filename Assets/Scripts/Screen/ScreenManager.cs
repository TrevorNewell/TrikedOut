using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;
using UnityEngine.SceneManagement;

public class ScreenManager : MonoBehaviour
{
    public static ScreenManager instance;
    public EventSystem eventHandler;

    // *All the game objects below are assumed to have the "Screen" tag.
    // These two parameters work great if the screen only goes one level deep.  However, if I go say 3 levels deep and I navigate back (Using "B" on the controller) it just swaps between the last two screens.  I need to update this but right now it isn't a serious issue..
    public GameObject lastScreen; // The last screen we displayed
    public GameObject currentScreen; // The current screen we're displaying

    public GameObject pauseScreen; // Our pauseScreen.  This is stored as a variable so in the StateManager when "Pause" is pressed on a controller, we can activate this menu.

    // The individaul HUDs for each player.
    public GameObject HUD1;
    public GameObject HUD2;
    public GameObject HUD3;
    public GameObject HUD4;


    void Awake()
    {
        instance = this;
    }

	// Use this for initialization
	void Start ()
    {
        // This finds the event system in our scene.  If we have more than one, we need to assign this manually.
        eventHandler = FindObjectOfType<EventSystem>();
    }

    // Update is called once per frame
    void Update ()
    {
        if (Input.GetButtonUp("P1_B") && (StateManager.instance.isPaused || StateManager.instance.isMainMenu))
        {
            if (currentScreen != null)
            {
                // If we are at the "root" of our screen hierarchy, and we have chosen to disable the root when the user goes back another level, then disable the current screen.  
                if (currentScreen.GetComponent<Screen>().isRoot && currentScreen.GetComponent<Screen>().disableRootOnBack)
                {
                    DisableCurrentScreen();
                }
                // Otherwise, if we are at the root, and we don't want the screen disabled on back (i.e. Main Menu screen, or at the HUD), then we don't do anything
                else if (currentScreen.GetComponent<Screen>().isRoot && !currentScreen.GetComponent<Screen>().disableRootOnBack)
                {
                    // Do nothing
                }
                // Otherwise, we have pressed B and we can still go back another level, so switch from the current screen to the last screen we were on.
                else
                {
                    SwitchScreens(currentScreen, lastScreen);
                }
            }
        }
	}


    public void Pause()
    {
        // Hide all the HUDs
        HUD1.SetActive(false);
        HUD2.SetActive(false);
        HUD3.SetActive(false);
        HUD4.SetActive(false);

        // Enable our pause screen.
        pauseScreen.SetActive(true);

        // Our currentScreen is now the pauseScreen.
        currentScreen = pauseScreen;

        // Set the currently selected object to the "firstActive" parameter on our pauseScreen
        instance.eventHandler.SetSelectedGameObject(pauseScreen.GetComponent<Screen>().firstActive.gameObject);
    }

    public void Unpause()
    {
        // Reactivate the HUD's for each player.
        HUD1.SetActive(true);
        HUD2.SetActive(true);
        HUD3.SetActive(true);
        HUD4.SetActive(true);

        // Hide the pauseScreen
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
        disable.SetActive(false);
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
