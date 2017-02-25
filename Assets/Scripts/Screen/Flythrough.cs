using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Flythrough : MonoBehaviour
{
    public float length;

    private GameObject[] players;
    private RaceManager[] managers;
    private bool initialized;
    
	// Use this for initialization
	void Start ()
    {
        players = GameObject.FindGameObjectsWithTag("Player");
        managers = FindObjectsOfType<RaceManager>();
        length = GetComponent<Animator>().runtimeAnimatorController.animationClips[0].length;
	}
	
	// Update is called once per frame
	void Update ()
    {
		if (!initialized)
        {
            foreach (GameObject g in players)
            {
                g.SetActive(false);
            }

            initialized = true;
        }
	}

    public void Finish()
    {
        foreach (GameObject g in players)
        {
            g.SetActive(true);
        }

        foreach (RaceManager r in managers)
        {
            r.FinishFlythrough();
            r.flythroughTime = length;
        }

        Destroy(gameObject);
    }
}
