using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ModelController : MonoBehaviour
{
    public float spinOutAnglesPerSecond = 70f;
    public GameObject model;

    private float currentLocalizedRotation = 0f;
    private int currentRotations = 0;
    private int spinOutRotations;
    private PlayerSoundPlayer psp;

    public void SpinOut(int rots)
    {
        currentRotations = 0;
        spinOutRotations = rots;
    }
	
	// Update is called once per frame
	void Update ()
    {
        if (psp == null)
        {
            psp = GetComponentInChildren<PlayerSoundPlayer>();
        }

		if (currentRotations < spinOutRotations)
        {
            currentLocalizedRotation += spinOutAnglesPerSecond * Time.deltaTime;
            if (currentLocalizedRotation > 340f && currentLocalizedRotation < 380f)
            {
                currentRotations++;
                currentLocalizedRotation = 0f;
            }
            model.transform.localRotation = Quaternion.Euler(0f, currentLocalizedRotation, 0f);
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.tag != "Terrain")
        {
            psp.Collide();
        }
    }
}
