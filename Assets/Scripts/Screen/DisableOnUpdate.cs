using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DisableOnUpdate : MonoBehaviour
{
    bool disabled = false;
	// Update is called once per frame
	void Update ()
    {
		if (!disabled)
        {
            disabled = true;
            gameObject.SetActive(false);
        }
	}
}
