using UnityEngine;
using System.Collections;

public class WeaponSelector : MonoBehaviour {

    GameObject currentWeapon;
    public GameObject bat;
    public GameObject gun;
    GameObject[] loadout;
    int selector;

	// Use this for initialization
	void Start () {

        loadout = new GameObject[1];
        loadout[0] = bat;

        selector = 0;
        currentWeapon = Instantiate(loadout[selector], gameObject.transform.position, transform.rotation) as GameObject;
        currentWeapon.transform.parent = gameObject.transform;

        if (gun != null)
        {
            AddWeapon(gun);
        }
    }

    void AddWeapon(GameObject newWeapon)
    {
        GameObject[] newLoadout = new GameObject[loadout.Length + 1];
        for(int i = 0; i < loadout.Length; i++)
        {
            newLoadout[i] = loadout[i];
        }
        newLoadout[loadout.Length] = Instantiate(newWeapon, gameObject.transform.position, transform.rotation) as GameObject;
        newLoadout[loadout.Length].SetActive(false);
        loadout = newLoadout;
    }

    void SwitchWeapon()
    {
        selector++;
        if (selector == loadout.Length) selector = 0;
        Destroy(currentWeapon);
        currentWeapon = Instantiate(loadout[selector], transform.position, transform.rotation) as GameObject;
        currentWeapon.SetActive(true);
        currentWeapon.GetComponent<Weapon>().Equip();
        currentWeapon.transform.parent = gameObject.transform;
    }

    // Update is called once per frame
    void Update ()
    {
	    if(Input.GetButtonDown("Y"))
        {
            SwitchWeapon();
        }
	}

    void OnTriggerEnter(Collider collider)
    {
        if(collider.tag == "Pickup")
        {
            collider.tag = "Weapon";
            collider.gameObject.GetComponent<Weapon>().SetPickup(false);
            AddWeapon(collider.gameObject);
            Destroy(collider.gameObject);
        }
    }
}
