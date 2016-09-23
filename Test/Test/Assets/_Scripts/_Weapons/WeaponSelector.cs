using UnityEngine;
using System.Collections;

public class WeaponSelector : MonoBehaviour {

    GameObject currentWeapon;
    public GameObject mmlgun;
    public GameObject bat;
    GameObject[] loadout;
    int selector;

	// Use this for initialization
	void Start () {
        loadout = new GameObject[2];
        loadout[0] = bat;
        loadout[1] = mmlgun;
        selector = 0;
        currentWeapon = Instantiate(loadout[selector], gameObject.transform.position, transform.rotation) as GameObject;
        currentWeapon.transform.parent = gameObject.transform;
	}

    void SwitchWeapon()
    {
        selector++;
        if (selector == loadout.Length) selector = 0;
        Destroy(currentWeapon);
        currentWeapon = Instantiate(loadout[selector], transform.position, transform.rotation) as GameObject;
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
}
