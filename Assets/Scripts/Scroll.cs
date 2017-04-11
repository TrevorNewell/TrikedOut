using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Scroll : MonoBehaviour
{
    public bool shouldScrollOnStart = true;
    public float scrollRate = 0.1f;

    public float timeToSitAtBottom = 1.0f;
    public float t = 0;
    public bool count = false;

    public GameObject bottomOfCredits;
    public GameObject bottomOfScreen;

    private Vector3 originalPosition;

    public Font ourFont;

    private bool shouldScroll = false;

    private Text[] theTexts; 
	// Use this for initialization
	void Start ()
    {
        originalPosition = gameObject.transform.position;

        theTexts = FindObjectsOfType<Text>();

        foreach (Text t in theTexts)
        {
            t.font = ourFont;
        }

        if (shouldScrollOnStart) shouldScroll = true;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (shouldScroll)
        {
            gameObject.transform.position = new Vector3(gameObject.transform.position.x, gameObject.transform.position.y + scrollRate, gameObject.transform.position.z);

            if (bottomOfCredits.transform.position.y > bottomOfScreen.transform.position.y)
            {
                shouldScroll = false;
                count = true;
            }
        }

        if (count)
        {
            t += Time.deltaTime;

            if (t > timeToSitAtBottom)
            {
                StateManager.instance.TheState = State.MainMenu;
            }
        }
	}

    public void StartScroll()
    {
        shouldScroll = true;
    }

    public void RestartScroll()
    {
        gameObject.transform.position = originalPosition;
        shouldScroll = true;
        count = false;
        t = 0;
    }
}
