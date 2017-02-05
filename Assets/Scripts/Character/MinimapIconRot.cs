using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MinimapIconRot : MonoBehaviour
{
	// Update is called once per frame
	void Update ()
    {
        transform.rotation = Quaternion.Euler(90f, 0f, 0f);
	}
}
