using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Test : MonoBehaviour
{
	// Update is called once per frame
	void Update ()
    {
		print(GetComponent<RectTransform>().localPosition);
	}
}
