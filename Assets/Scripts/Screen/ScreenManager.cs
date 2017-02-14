using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;
using System.Collections.Generic;

public class ScreenManager : MonoBehaviour
{

    //Screen to open automatically at the start of the Scene
    public Animator initiallyOpen;

    public ScreenType currentScreenType;

    //Currently Open Screen
    private Animator m_Open;

    //Hash of the parameter we use to control the transitions.
    private int m_OpenParameterId;

    //The GameObject Selected before we opened the current Screen.
    //Used when closing a Screen, so we can go back to the button that opened it.
    private GameObject m_PreviouslySelected;

    //Animator State and Transition names we need to check against.
    const string k_OpenTransitionName = "Open";
    const string k_ClosedStateName = "Closed";

    public void OnEnable()
    {
        //We cache the Hash to the "Open" Parameter, so we can feed to Animator.SetBool.
        m_OpenParameterId = Animator.StringToHash(k_OpenTransitionName);

        //If set, open the initial Screen now.
        if (initiallyOpen == null)
            return;
        OpenPanel(initiallyOpen);
    }

    //Closes the currently open panel and opens the provided one.
    //It also takes care of handling the navigation, setting the new Selected element.
    public void OpenPanel(Animator anim)
    {
        if (m_Open == anim)
            return;

        //Activate the new Screen hierarchy so we can animate it.
        anim.gameObject.SetActive(true);
        //Save the currently selected button that was used to open this Screen. (CloseCurrent will modify it)
        var newPreviouslySelected = EventSystem.current.currentSelectedGameObject;
        //Move the Screen to front.
        anim.transform.SetAsLastSibling();

        currentScreenType = anim.gameObject.GetComponent<Screen>().screenType;

        GetComponent<StateManager>().currentScreen = currentScreenType;

        CloseCurrent();

        m_PreviouslySelected = newPreviouslySelected;

        //Set the new Screen as then open one.
        m_Open = anim;
        //Start the open animation
        m_Open.SetBool(m_OpenParameterId, true);

        //Set an element in the new screen as the new Selected one.
        GameObject go = FindFirstEnabledSelectable(anim.gameObject);
        if (go != null) SetSelected(anim.gameObject.GetComponent<Screen>().firstActive.gameObject);
        //SetSelected(go);
    }

    //Finds the first Selectable element in the providade hierarchy.
    static GameObject FindFirstEnabledSelectable(GameObject gameObject)
    {
        GameObject go = null;
        var selectables = gameObject.GetComponentsInChildren<Selectable>(true);
        foreach (var selectable in selectables)
        {
            if (selectable.IsActive() && selectable.IsInteractable())
            {
                go = selectable.gameObject;
                break;
            }
        }
        return go;
    }

    //Closes the currently open Screen
    //It also takes care of navigation.
    //Reverting selection to the Selectable used before opening the current screen.
    public void CloseCurrent()
    {
        if (m_Open == null)
            return;

        //Start the close animation.
        m_Open.SetBool(m_OpenParameterId, false);

        //Reverting selection to the Selectable used before opening the current screen.
        SetSelected(m_PreviouslySelected);
        //Start Coroutine to disable the hierarchy when closing animation finishes.
        StartCoroutine(DisablePanelDelayed(m_Open));
        //No screen open.
        m_Open = null;
    }

    //Coroutine that will detect when the Closing animation is finished and it will deactivate the
    //hierarchy.
    IEnumerator DisablePanelDelayed(Animator anim)
    {
        bool closedStateReached = false;
        bool wantToClose = true;
        while (!closedStateReached && wantToClose)
        {
            if (!anim.IsInTransition(0))
                closedStateReached = anim.GetCurrentAnimatorStateInfo(0).IsName(k_ClosedStateName);

            wantToClose = !anim.GetBool(m_OpenParameterId);

            yield return new WaitForEndOfFrame();
        }

        if (wantToClose)
            anim.gameObject.SetActive(false);
    }

    //Make the provided GameObject selected
    //When using the mouse/touch we actually want to set it as the previously selected and 
    //set nothing as selected for now.
    private void SetSelected(GameObject go)
    {
        //Select the GameObject.
        EventSystem.current.SetSelectedGameObject(go);

        //If we are using the keyboard right now, that's all we need to do.
        var standaloneInputModule = EventSystem.current.currentInputModule as StandaloneInputModule;
        if (standaloneInputModule != null)// && standaloneInputModule.inputMode == StandaloneInputModule.InputMode.Buttons)
            return;

        //Since we are using a pointer device, we don't want anything selected. 
        //But if the user switches to the keyboard, we want to start the navigation from the provided game object.
        //So here we set the current Selected to null, so the provided gameObject becomes the Last Selected in the EventSystem.
        EventSystem.current.SetSelectedGameObject(null);
    }
}







//using UnityEngine;
//using UnityEngine.UI;
//using UnityEngine.EventSystems;
//using System.Collections;
//using UnityEngine.SceneManagement;
//using System.Collections.Generic;

//public class ScreenManager : MonoBehaviour
//{
//    public StandaloneInputModule theModule;

//    public static ScreenManager instance;
//    public EventSystem eventHandler;

//    // *All the game objects below are assumed to have the "Screen" tag.
//    // These two parameters work great if the screen only goes one level deep.  However, if I go say 3 levels deep and I navigate back (Using "B" on the controller) it just swaps between the last two screens.  I need to update this but right now it isn't a serious issue..
//    public GameObject lastScreen; // The last screen we displayed
//    public GameObject currentScreen; // The current screen we're displaying

//    public List<GameObject> screenQueue;

//    public GameObject[] pauseScreens; // Our pauseScreen.  This is stored as a variable so in the StateManager when "Pause" is pressed on a controller, we can activate this menu.
//    //public GameObject[] optionScreens;
//    // The individaul HUDs for each player.
//    public GameObject HUD1;
//    public GameObject HUD2;
//    public GameObject HUD3;
//    public GameObject HUD4;

//    public bool isPaused = false;


//    void Awake()
//    {
//        instance = this;
//    }

//	// Use this for initialization
//	void Start ()
//    {
//        theModule = gameObject.GetComponent<StandaloneInputModule>();
//        // This finds the event system in our scene.  If we have more than one, we need to assign this manually.
//        eventHandler = FindObjectOfType<EventSystem>();


//        /*if (!StateManager.instance.isMainMenu)
//        {
//            pauseScreens = new GameObject[4];
//            optionScreens = new GameObject[4];

//            for (int i = 1; i < 5; i++)
//            {
//                pauseScreens[i - 1] = GameObject.Find("InGameMenuP" + i);
//                pauseScreens[i - 1].SetActive(false);
//                optionScreens[i - 1] = GameObject.Find("OptionsMenuP" + i);
//                optionScreens[i - 1].SetActive(false);
//            }
//        }*/
//    }

//    // Update is called once per frame
//    void Update ()
//    {
//        //FIX
//        //string cb = theModule.cancelButton;
//        /*if ((StateManager.instance.isPaused || StateManager.instance.isMainMenu) && Input.GetButtonUp("P1_B")) // && Input.GetButtonUp(cb);
//        {
//            if (currentScreen != null)
//            {
//                // If we are at the "root" of our screen hierarchy, and we have chosen to disable the root when the user goes back another level, then disable the current screen.  
//                if (currentScreen.GetComponent<Screen>().isRoot && currentScreen.GetComponent<Screen>().disableRootOnBack)
//                {
//                    DisableCurrentScreen();
//                }
//                // Otherwise, if we are at the root, and we don't want the screen disabled on back (i.e. Main Menu screen, or at the HUD), then we don't do anything
//                else if (currentScreen.GetComponent<Screen>().isRoot && !currentScreen.GetComponent<Screen>().disableRootOnBack)
//                {
//                    // Do nothing
//                }
//                // Otherwise, we have pressed B and we can still go back another level, so switch from the current screen to the last screen we were on.
//                else
//                {
//                    //PopScreen();
//                    SwitchScreens(currentScreen, lastScreen);
//                }
//            }
//        }*/
//	}

//    public void GoBack()
//    {
//        if (currentScreen != null)
//        {
//            // If we are at the "root" of our screen hierarchy, and we have chosen to disable the root when the user goes back another level, then disable the current screen.  
//            //if (currentScreen.GetComponent<Screen>().isRoot && currentScreen.GetComponent<Screen>().disableRootOnBack)
//            {
//            //    DisableCurrentScreen();
//            }
//            // Otherwise, if we are at the root, and we don't want the screen disabled on back (i.e. Main Menu screen, or at the HUD), then we don't do anything
//            //else if (currentScreen.GetComponent<Screen>().isRoot && !currentScreen.GetComponent<Screen>().disableRootOnBack)
//            {
//                // Do nothing
//            }
//            // Otherwise, we have pressed B and we can still go back another level, so switch from the current screen to the last screen we were on.
//            //else
//            {
//                //PopScreen();
//            //    SwitchScreens(currentScreen, lastScreen);
//            }
//        }
//    }

//    public void PopScreen()
//    {
//        EnableScreen(screenQueue[screenQueue.Count - 1]);
//        screenQueue.RemoveAt(screenQueue.Count - 1);
//    }

//    public void Pause(int p)
//    {
//        Debug.Log(p);
//        // Hide all the HUDs
//        HUD1.SetActive(false);
//        HUD2.SetActive(false);
//        HUD3.SetActive(false);
//        HUD4.SetActive(false);

//        // Enable our pause screen.
//        pauseScreens[p-1].SetActive(true);

//        // Our currentScreen is now the pauseScreen.
//        currentScreen = pauseScreens[p-1];

//        // Set the currently selected object to the "firstActive" parameter on our pauseScreen
//        instance.eventHandler.SetSelectedGameObject(pauseScreens[p-1].GetComponent<Screen>().firstActive.gameObject);
//    }

//    public void Unpause(int p)
//    {
//        // Reactivate the HUD's for each player.
//        HUD1.SetActive(true);
//        HUD2.SetActive(true);
//        HUD3.SetActive(true);
//        HUD4.SetActive(true);

//        // Hide the pauseScreen
//        pauseScreens[p-1].SetActive(false);
//    }


//    public void DisableCurrentScreen()
//    {
//        DisableScreen(currentScreen);
//    }

//    public void SwitchScreens(GameObject from, GameObject to)
//    {
//        to.SetActive(true);
//        currentScreen = to;

//        if (to.GetComponent<Screen>().firstActive != null)
//        {
//            ScreenManager.instance.eventHandler.SetSelectedGameObject(to.GetComponent<Screen>().firstActive.gameObject);
//        }

//        lastScreen = from;
//        screenQueue.Add(to);

//        from.SetActive(false);
//    }

//    public void EnableScreen(GameObject enable)
//    {
//        enable.SetActive(true);
//        currentScreen = enable;
//    }

//    public void DisableScreen(GameObject disable)
//    {
//        disable.SetActive(false);
//    }

//    public void LoadScene(string sceneName)
//    {
//        // Transition out here

//        SceneManager.LoadScene(sceneName);
//    }

//    public void QuitApplication()
//    {
//        Application.Quit();
//    }
//}
