using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Flythrough : MonoBehaviour
{
    public float length;
    public GameObject minimap;

    private GameObject[] players;
    private PlaceManager pmanager;
    private RaceManager[] managers;
    private bool initialized;
    private float timeElapsed = 0f;
    
	// Use this for initialization
	void Start ()
    {
        players = GameObject.FindGameObjectsWithTag("Player");
        pmanager = FindObjectOfType<PlaceManager>();
        managers = FindObjectsOfType<RaceManager>();
        length = GetComponent<Animator>().runtimeAnimatorController.animationClips[0].length;
	}
	
	// Update is called once per frame
	void Update ()
    {
		if (!initialized)
        {
            GetComponentInChildren<FlythroughFadeout>().SetLength(length);
            foreach (GameObject g in players)
            {
                g.SetActive(false);
            }

            initialized = true;
        }

        timeElapsed += Time.deltaTime;
	}

    public void Finish()
    {
        pmanager.raceStarted = true;
        if (FindObjectOfType<RaceSetup>().playerCount == 3)
        {
            minimap.SetActive(true);
        }
        foreach (GameObject g in players)
        {
            g.SetActive(true);
        }

        foreach (RaceManager r in managers)
        {
            r.FinishFlythrough();
            r.flythroughTime = timeElapsed;
        }

        StateManager.instance.FinishFlythrough();
        Destroy(gameObject);
    }
}
