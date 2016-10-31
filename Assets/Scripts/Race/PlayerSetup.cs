using UnityEngine;
using System.Collections;

public class PlayerSetup : MonoBehaviour
{
    public int playerCount = 2;

	// Use this for initialization
	void Start ()
    {
        GameObject[] players = GameObject.FindGameObjectsWithTag("Player");

        Vector2 rectSize = new Vector2(1.0f, 1.0f);
        bool vert = true;
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
                        break;
                    case 1:
                        GameObject.Find("PlayerCamera" + j.ToString()).GetComponent<Camera>().rect = new Rect(new Vector2(0.5f, 1.0f - rectSize.y), rectSize);
                        break;
                    case 2:
                        GameObject.Find("PlayerCamera" + j.ToString()).GetComponent<Camera>().rect = new Rect(new Vector2(0.0f, 0.0f), rectSize);
                        break;
                    case 3:
                        GameObject.Find("PlayerCamera" + j.ToString()).GetComponent<Camera>().rect = new Rect(new Vector2(0.5f, 0.0f), rectSize);
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
	}
}
