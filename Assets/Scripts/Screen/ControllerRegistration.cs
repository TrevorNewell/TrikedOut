using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ControllerRegistration : MonoBehaviour
{
    public bool p1 = false;
    public bool p2 = false;
    public bool p3 = false;
    public bool p4 = false;

    public GameObject p1GO;
    public GameObject p2GO;
    public GameObject p3GO;
    public GameObject p4GO;

    public int playerCount = 0;

    // Use this for initialization
    void Start ()
    {
        p1GO.SetActive(false);
        p2GO.SetActive(false);
        p3GO.SetActive(false);
        p4GO.SetActive(false);
    }

    // Update is called once per frame
    void Update ()
    {
        if (Input.GetButtonDown("P1_A") && playerCount > 0)
        {
            // Submit Active Players and Proceed to Character Selection
            StateManager.instance.CharacterSelection();
        }

        if (Input.GetButtonDown("P1_Start") && !p1)
        {
            playerCount++;
            p1 = true;
            p1GO.SetActive(true);
        }
        else if (Input.GetButtonDown("P2_Start") && !p2)
        {
            playerCount++;
            p2 = true;
            p2GO.SetActive(true);
        }
        else if (Input.GetButtonDown("P3_Start") && !p3)
        {
            playerCount++;
            p3 = true;
            p3GO.SetActive(true);
        }
        else if (Input.GetButtonDown("P4_Start") && !p4)
        {
            playerCount++;
            p4 = true;
            p4GO.SetActive(true);
        }
    }
}
