using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class RaceSetup : MonoBehaviour
{
    public int playerCount = 2;

	// Use this for initialization
	void Awake ()
    {
        GameObject[] players = GameObject.FindGameObjectsWithTag("Player");

        Vector2 rectSize = new Vector2(1.0f, 1.0f);
        bool vert = true;
        if (StateManager.numPlayers != 0) playerCount = StateManager.numPlayers;
        int divides = playerCount;

        while (divides / 2 != 0)
        {
            if (vert)
            {
                rectSize.x /= 2;
            }
            else
            {
                rectSize.y /= 2;
            }

            divides = (divides) / 2 + (divides % 2);
            vert = !vert;
        }

        for (int i = 0; i < players.Length; i++)
        {
            int j = players[i].GetComponent<Character>().GetID();
            if (j <= playerCount)
            {
                switch (j - 1)
                {
                    case 0:
                        GameObject.Find("PlayerCamera" + j.ToString()).GetComponent<Camera>().rect = new Rect(new Vector2(0.0f, 1.0f - rectSize.y), rectSize);
                        Vector2 refRes1 = GameObject.Find("InGameMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution;
                        refRes1.x /= rectSize.x;
                        refRes1.y /= rectSize.y;
                        GameObject.Find("InGameMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution = refRes1;
                        GameObject.Find("OptionsMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution = refRes1;
                        GameObject.Find("InGameMenuP" + j.ToString()).SetActive(false);
                        GameObject.Find("OptionsMenuP" + j.ToString()).SetActive(false);
                        break;
                    case 1:
                        GameObject.Find("PlayerCamera" + j.ToString()).GetComponent<Camera>().rect = new Rect(new Vector2(0.5f, 1.0f - rectSize.y), rectSize);
                        Vector2 refRes2 = GameObject.Find("InGameMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution;
                        refRes2.x /= rectSize.x;
                        refRes2.y /= rectSize.y;
                        GameObject.Find("InGameMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution = refRes2;
                        GameObject.Find("OptionsMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution = refRes2;
                        GameObject.Find("InGameMenuP" + j.ToString()).SetActive(false);
                        GameObject.Find("OptionsMenuP" + j.ToString()).SetActive(false);
                        break;
                    case 2:
                        GameObject.Find("PlayerCamera" + j.ToString()).GetComponent<Camera>().rect = new Rect(new Vector2(0.0f, 0.0f), rectSize);
                        Vector2 refRes3 = GameObject.Find("InGameMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution;
                        refRes3.x /= rectSize.x;
                        refRes3.y /= rectSize.y;
                        GameObject.Find("InGameMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution = refRes3;
                        GameObject.Find("OptionsMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution = refRes3;
                        GameObject.Find("InGameMenuP" + j.ToString()).SetActive(false);
                        GameObject.Find("OptionsMenuP" + j.ToString()).SetActive(false);
                        break;
                    case 3:
                        GameObject.Find("PlayerCamera" + j.ToString()).GetComponent<Camera>().rect = new Rect(new Vector2(0.5f, 0.0f), rectSize);
                        Vector2 refRes4 = GameObject.Find("InGameMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution;
                        refRes4.x /= rectSize.x;
                        refRes4.y /= rectSize.y;
                        GameObject.Find("InGameMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution = refRes4;
                        GameObject.Find("OptionsMenuP" + j.ToString()).GetComponent<CanvasScaler>().referenceResolution = refRes4;
                        GameObject.Find("InGameMenuP" + j.ToString()).SetActive(false);
                        GameObject.Find("OptionsMenuP" + j.ToString()).SetActive(false);
                        break;
                }
            }
            else
            {
                players[i].SetActive(false);
            }
        }

        RaceManager[] rms = GetComponents<RaceManager>();

        foreach (RaceManager r in rms)
        {
            if (r.GetID() > playerCount)
            {
                r.enabled = false;
                GameObject hud = GameObject.Find("HUD" + r.GetID().ToString());
                hud.SetActive(false);
            }
        }

        GameObject.Find("CheckPoints").transform.parent = transform;
	}
}
