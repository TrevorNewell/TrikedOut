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
