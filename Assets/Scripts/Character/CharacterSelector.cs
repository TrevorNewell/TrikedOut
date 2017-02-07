using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSelector : MonoBehaviour
{
    public GameObject castPoint;
    public GameObject weapon;
    public GameObject ulti;
    public int characterSelection = 0;
    public GameObject[] characters;
    public GameObject[] projectiles;
    public GameObject[] bats;
    public float modelOffset = -0.81f;

    private GameObject character;

    void Start()
    {
        //TEMPORARY
        CreateCharacter(characterSelection);
    }

	// This method should be called most likely by the race manager when it receives character selections
	public void CreateCharacter (int characterSelection)
    {
        character = Instantiate(characters[characterSelection]);
        character.name = characters[characterSelection].name;
        character.GetComponent<FollowGround>().castPoint = castPoint;
        character.transform.parent = gameObject.transform;
        character.transform.localPosition = new Vector3(0f, modelOffset, 0f);
        weapon.transform.parent = character.transform;
        weapon.GetComponent<MarshmallowGun>().bullet = projectiles[characterSelection];
        GameObject ub = Instantiate(bats[characterSelection]);
        ub.transform.parent = ulti.transform;
        ub.transform.localPosition = new Vector3(0.063f, 0f, 0.128f);//Vector3.zero;
        ub.transform.localScale = Vector3.one;
        ulti.GetComponent<Bat>().batModel = ub;
        ub.SetActive(false);
        GetComponent<ModelController>().model = character;


	}
}
