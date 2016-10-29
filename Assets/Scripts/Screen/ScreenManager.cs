using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;
using System.Collections;
using UnityEngine.SceneManagement;

public class ScreenManager : MonoBehaviour
{
    public static ScreenManager instance;
    public EventSystem eventHandler;
    public GameObject lastScreen;
    public GameObject currentScreen;

    //public float delay = 0.2f;

    void Awake()
    {
        instance = this;
    }

	// Use this for initialization
	void Start ()
    {
        instance = this;
        eventHandler = FindObjectOfType<EventSystem>();
    }

    // Update is called once per frame
    void Update ()
    {
	
	}

    public void SwitchScreens(GameObject from, GameObject to)
    {
        to.SetActive(true);
        currentScreen = to;
        ScreenManager.instance.eventHandler.SetSelectedGameObject(to.GetComponent<Screen>().firstActive.gameObject);

        lastScreen = from;
        from.SetActive(false);
    }

    public void EnableObject(GameObject enable)
    {
        enable.SetActive(true);
    }

    public void DisableObject(GameObject disable)
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
