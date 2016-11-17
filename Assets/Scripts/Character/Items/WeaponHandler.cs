using UnityEngine;
using System.Collections.Generic;

public class WeaponHandler : MonoBehaviour
{
    private List<GameObject> items;
    private int currentItemIterator;
    private int itemCount;
    private GameObject currentItem;
    public GameObject startWeapon1;
    public GameObject startWeapon2;

	// Use this for initialization
	void Start ()
    {
        items = new List<GameObject>();

	    if (startWeapon1 != null)
        {
            items.Add(startWeapon1);
        }

        if (startWeapon2 != null)
        {
            items.Add(startWeapon2);
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
    }
}
