using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSelector : MonoBehaviour
{
    public GameObject castPoint;
    public GameObject weapon;
    public int characterSelection = 0;
    public GameObject[] characters;
    public float modelOffset = -0.81f;

    private GameObject character;

    void Start()
    {
        //TEMPORARY
        CreateCharacter();
    }

	// This method should be called most likely by the race manager when it receives character selections
	public void CreateCharacter ()
    {
        character = Instantiate(characters[characterSelection]);
        character.name = characters[characterSelection].name;
        character.GetComponent<FollowGround>().castPoint = castPoint;
        character.transform.parent = gameObject.transform;
        character.transform.localPosition = new Vector3(0f, modelOffset, 0f);
        weapon.transform.parent = character.transform;
        GetComponent<ModelController>().model = character;
	}
}
