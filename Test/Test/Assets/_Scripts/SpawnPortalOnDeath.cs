using UnityEngine;
using System.Collections;

public class SpawnPortalOnDeath : MonoBehaviour
{
    public GameObject enableOn; // Which enemy needs to be killed in order to enable this portal?

    public GameObject portal; 

	// Use this for initialization
	void Start ()
    {
        portal.SetActive(false);
	}
	
	// Update is called once per frame
	void Update ()
    {
	    if (enableOn == null)
        {
            portal.SetActive(true);
        }
	}
}
