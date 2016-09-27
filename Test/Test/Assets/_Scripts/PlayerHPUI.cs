using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerHPUI : MonoBehaviour
{
    public PlayerAttributes player;

	// Use this for initialization
	void Start ()
    {

	}
	
	// Update is called once per frame
	void Update ()
    {
        GetComponent<Text>().text = player.health.ToString();
    }
}
