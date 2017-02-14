using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using UnityEngine.SceneManagement;

public enum ScreenType { Start, MainMenu, TrackSelection, ControllerRegistration, CharacterSelection, Options, HUD, PauseMenu, Credits }

// A screen is a single window that contains the Canvas for drawing to the screen as well as any images and buttons etc that are displayed on that screen.
public class Screen : MonoBehaviour
{
    //public GameObject[] objectsToAnimate;
    //public GameObject[] buttons;
    //public Vector3[] originalLocations;
    //public Vector3[] newLocations;
    //public bool onScreen; 
    public Selectable firstActive;

    public ScreenType screenType;

    //public bool isRoot;
    //public bool disableRootOnBack;
    //public bool isPublicMenu;

	// Use this for initialization
	void Start ()
    {
        //ScreenManager.instance.eventHandler.firstSelectedGameObject = firstActive.gameObject;
        //Button[] b = gameObject.GetComponentsInChildren<Button>();
        //buttons = new GameObject[b.Length];
        //for (int i = 0; i < b.Length; i++)
        //{
        //    buttons[i] = b[i].gameObject;

        //}
    }
	
    void OnEnable()
    {
        //if (firstActive != null) StateManager.instance.eventHandler.SetSelectedGameObject(firstActive.gameObject);
    }

    void OnDisable()
    {

    }

    public void SwitchScreens(GameObject to)
    {
        //ScreenManager.instance.SwitchScreens(gameObject, to);
    }
}
