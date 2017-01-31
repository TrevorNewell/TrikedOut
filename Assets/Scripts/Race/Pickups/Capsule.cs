using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Capsule : MonoBehaviour
{
    public GameObject bat;
    public GameObject boost;
    public float chanceForBat = 0.5f;

    public float boostFactor = 5f;
    public float boostDuration = 3f;

    private bool isBat = true;
    private int playerID = 0;

    //P1 is 10
    //P2 is 11
    //P3 is 12
    //P4 is 13
    public void SetLayer(int l)
    {
        gameObject.layer = l;
        playerID = l - 9;
    }

	// Use this for initialization
	void Start ()
    {
		if (Random.Range(0f, 1f) < chanceForBat)
        {
            bat.SetActive(true);
        }
        else
        {
            boost.SetActive(true);
            isBat = false;
        }
	}

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            if (int.Parse(other.name.Substring(1)) == playerID)
            {
                if (isBat)
                {

                }
                else
                {
                    other.GetComponent<NewMove>().SetBoost(boostFactor, boostDuration);
                    Destroy(gameObject);
                }
            }
        }
    }
}
