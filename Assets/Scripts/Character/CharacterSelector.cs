using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterSelector : MonoBehaviour
{
    public GameObject castPoint;
    public GameObject weapon;
    public GameObject ulti;
    public GameObject minimapIcon;
    public int characterSelection = 0;
    public GameObject[] characters;
    public GameObject[] projectiles;
    public GameObject[] bats;
    public Sprite[] minimapIcons;
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
        character.transform.localRotation = Quaternion.Euler(Vector3.zero);
        
        //FIX THE PRINCESS RIG
        if (characterSelection == 1)
        {
            character.transform.localRotation = Quaternion.Euler(new Vector3(0f, 90f, 0f));
        }

        if (characterSelection == 3)
        {
            character.transform.localRotation = Quaternion.Euler(new Vector3(0f, -90f, 0f));
        }

        weapon.transform.parent = character.transform;
        weapon.GetComponent<MarshmallowGun>().bullet = projectiles[characterSelection];
        GameObject ub = Instantiate(bats[characterSelection]);
        if (character.GetComponent<GetAnchors>() != null)
        {
            ub.transform.parent = character.GetComponent<GetAnchors>().dominantHand.transform;
            ub.transform.localPosition = Vector3.zero;
            ub.transform.localRotation = Quaternion.Euler(90f, 90 * -1f * character.GetComponent<GetAnchors>().dominantHandOrientation, 0f);
            ulti.GetComponent<Bat>().SetAnimatedSwing();
            ulti.GetComponent<Bat>().SetAnimator(character.GetComponent<Animator>());
        }
        else
        {
            ub.transform.parent = ulti.transform;
            ub.transform.localPosition = new Vector3(0.063f, 0f, 0.128f);
            ub.transform.localScale = Vector3.one;
        }
        ulti.GetComponent<Bat>().batModel = ub;
        ub.SetActive(false);
        GetComponent<ModelController>().model = character;
        minimapIcon.GetComponent<SpriteRenderer>().sprite = minimapIcons[characterSelection];

        Animator anim = character.GetComponent<Animator>();
        if (anim != null)
        {
            GetComponent<InputHandler>().SetAnimator(anim);
        }
	}
}
