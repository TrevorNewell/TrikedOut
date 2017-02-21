using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Capsule : MonoBehaviour
{
    public GameObject bat;
    public GameObject boost;
    public GameObject jackSprite;
    public GameObject splat;

    public GameObject jackObject;

    public float chanceForBat = 0.5f;
    public float chanceForJack = 0.2f;
    public float batDuration = 10f;

    public float boostFactor = 5f;
    public float boostDuration = 3f;
    public float boostSensitivity = 2.5f;

    private bool isBat = true;
    private bool isJack = false;
    private int playerID = 0;

    //P1 is 10
    //P2 is 11
    //P3 is 12
    //P4 is 13
    public void SetLayer(int l)
    {
        gameObject.layer = l;
        bat.layer = l;
        boost.layer = l;
        splat.layer = l;
        playerID = l - 9;
    }

	// Use this for initialization
	void Start ()
    {
		if (Random.Range(0f, 1f) < chanceForBat)
        {
            bat.SetActive(true);
        }
        else if (Random.Range(0f, 1f) < chanceForJack)
        {
            //jackSprite.SetActive(true);
            isBat = false;
            isJack = true;
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
                    GameObject.Find(other.name + "_Ulti").GetComponent<Bat>().GiveBat(batDuration);
                    Destroy(gameObject);
                }
                else if (isJack)
                {
                    GameObject jack = Instantiate(jackObject);
                    jack.transform.position = transform.position;
                    jack.GetComponent<Jack>().AddForwardForce(other.transform.forward, 1000f);
                    Destroy(gameObject);
                }
                else
                {
                    other.GetComponent<NewMove>().SetBoost(boostFactor, boostDuration, boostSensitivity);
                    other.GetComponentInChildren<Rockets>().Activate(boostDuration);
                    Destroy(gameObject);
                }
            }
        }
    }
}
