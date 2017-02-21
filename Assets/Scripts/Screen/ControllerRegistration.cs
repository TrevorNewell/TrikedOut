using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ControllerRegistration : MonoBehaviour
{
    public float animationPlaybackSpeed = 1.0f;

    public bool p1 = false;
    public bool p2 = false;
    public bool p3 = false;
    public bool p4 = false;

    public GameObject p1GO;
    public GameObject p2GO;
    public GameObject p3GO;
    public GameObject p4GO;

    public int playerCount = 0;

    void Awake()
    {
        //p1GO.GetComponent<Animator>().

    }

    // Use this for initialization
    void Start ()
    {
        p1GO.GetComponent<Animator>().SetFloat("animSpeedMult", animationPlaybackSpeed);
        p2GO.GetComponent<Animator>().SetFloat("animSpeedMult", animationPlaybackSpeed);
        p3GO.GetComponent<Animator>().SetFloat("animSpeedMult", animationPlaybackSpeed);
        p4GO.GetComponent<Animator>().SetFloat("animSpeedMult", animationPlaybackSpeed);

        p1GO.GetComponent<Animator>().Play("Take", 0, 1.0f);
        p2GO.GetComponent<Animator>().Play("Take", 0, 1.0f);
        p3GO.GetComponent<Animator>().Play("Take", 0, 1.0f);
        p4GO.GetComponent<Animator>().Play("Take", 0, 1.0f);

        //p1GO.SetActive(false);
        //p2GO.SetActive(false);
        //p3GO.SetActive(false);
        //p4GO.SetActive(false);
    }

    private void OnEnable()
    {
        Reset();
    }

    public void Reset()
    {
        p1GO.GetComponent<Animator>().SetBool("active", false);
        p2GO.GetComponent<Animator>().SetBool("active", false);
        p3GO.GetComponent<Animator>().SetBool("active", false);
        p4GO.GetComponent<Animator>().SetBool("active", false);

        p1GO.GetComponent<Animator>().Play("Take", 0, 1.0f);
        p2GO.GetComponent<Animator>().Play("Take", 0, 1.0f);
        p3GO.GetComponent<Animator>().Play("Take", 0, 1.0f);
        p4GO.GetComponent<Animator>().Play("Take", 0, 1.0f);

        p1 = false;
        p2 = false;
        p3 = false;
        p4 = false;
    }

    // Update is called once per frame
    void Update ()
    {
        if (Input.GetButtonDown("P1_A") && playerCount > 0)
        {
            // Submit Active Players and Proceed to Character Selection
            StateManager.instance.CharacterSelection();
        }

        // P1
        if (Input.GetButtonDown("P1_Start") && !p1)
        {
            playerCount++;
            p1 = true;
            p1GO.GetComponent<Animator>().SetBool("active", true);
        }
        else if (Input.GetButtonDown("P1_B") && p1)
        {
            playerCount--;
            p1 = false;
            p1GO.GetComponent<Animator>().SetBool("active", false);
        }

        // P2
        if (Input.GetButtonDown("P2_Start") && !p2)
        {
            playerCount++;
            p2 = true;
            p2GO.GetComponent<Animator>().SetBool("active", true);
        }
        else if (Input.GetButtonDown("P2_B") && p2)
        {
            playerCount--;
            p2 = false;
            p2GO.GetComponent<Animator>().SetBool("active", false);
        }

        // P3
        if (Input.GetButtonDown("P3_Start") && !p3)
        {
            playerCount++;
            p3 = true;
            p3GO.GetComponent<Animator>().SetBool("active", true);
        }
        else if (Input.GetButtonDown("P3_B") && p3)
        {
            playerCount--;
            p3 = false;
            p3GO.GetComponent<Animator>().SetBool("active", false);
        }

        // P4
        if (Input.GetButtonDown("P4_Start") && !p4)
        {
            playerCount++;
            p4 = true;
            p4GO.GetComponent<Animator>().SetBool("active", true);
        }
        else if (Input.GetButtonDown("P4_B") && p4)
        {
            playerCount--;
            p4 = false;
            p4GO.GetComponent<Animator>().SetBool("active", false);
        }
    }
}
