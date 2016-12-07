using UnityEngine;
using System.Collections.Generic;

public class WeaponHandler : MonoBehaviour
{
    private List<GameObject> items;
    private int currentItemIterator;
    private int itemCount;
    private GameObject currentItem;
    public GameObject startWeapon1;
    public GameObject ultimateWeapon;
    public float unitsToChargeUlti;
    private float currentCharge;

	// Use this for initialization
	void Start ()
    {
        items = new List<GameObject>();

	    if (startWeapon1 != null)
        {
            items.Add(startWeapon1);
        }

        currentItemIterator = items.Count - 1;
        itemCount = items.Count;

        SwitchItem();
    }

    public void SwitchItem()
    {
        if (currentItem != null) Destroy(currentItem);
        currentItemIterator++;
        if (currentItemIterator == itemCount)
        {
            currentItemIterator = 0;
        }
        currentItem = Instantiate(items[currentItemIterator]);
        currentItem.transform.parent = gameObject.transform;
        currentItem.transform.localPosition = Vector3.zero;
        GetComponentInParent<Player>().weapon = currentItem;
        currentItem.GetComponent<Item>().SetDefaultScale();
        currentItem.GetComponent<Item>().SetPlayerID(GetComponentInParent<Player>().GetID());
    }

    public void ActivateUltimate()
    {
        if (currentCharge >= unitsToChargeUlti)
        {
            GameObject ulti = Instantiate(ultimateWeapon);
            ulti.transform.parent = gameObject.transform;
            ulti.GetComponent<Item>().Activate();
            ulti.GetComponent<Item>().SetDefaultScale();
            ulti.GetComponent<Item>().SetPlayerID(GetComponentInParent<Player>().GetID());
            currentCharge = 0;
        }
    }

    public void Charge(float c)
    {
        currentCharge += c;
    }

    void Update()
    {
        //print(currentCharge);
    }
}
