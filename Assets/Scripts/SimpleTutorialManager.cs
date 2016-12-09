using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

public class SimpleTutorialManager : MonoBehaviour
{
    public Text statusText;

    public float displayTime;
    public float temp = 0.0f;
    public float currentCountdown;
    public int currentScreen = 0;

    [System.Serializable]
    public struct EasierScreen
    {
        public float time;
        public GameObject go;
    }

    public EasierScreen[] easierScreens;

    // Use this for initialization
    void Start ()
    {
        float currentTotal = 0;

        foreach (EasierScreen s in easierScreens)
        {
            currentTotal += s.time;
        }

        displayTime = currentTotal;

        DisableAll();
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (temp == 0)
        {
            currentCountdown = easierScreens[0].time;
            currentScreen = 0;
            DisplayScreen(easierScreens[currentScreen]);
        }

        currentCountdown -= Time.fixedDeltaTime;
        if (currentCountdown < 0)
        {
            if (currentScreen < easierScreens.Length)
            {
                DisableAll();
                currentScreen++;
                currentCountdown = easierScreens[currentScreen].time;
                DisplayScreen(easierScreens[currentScreen]);
            }
            else
            {
                currentCountdown = displayTime;
            }
        }


        temp += Time.fixedDeltaTime;

        if (temp > displayTime)
        {
            SceneManager.LoadScene("Menus");
        }
	}

    public void DisplayScreen(EasierScreen s)
    {
        s.go.SetActive(true);
    }

    public void DisableAll()
    {
        foreach (EasierScreen s in easierScreens)
        {
            s.go.SetActive(false);
        }
    }
}

