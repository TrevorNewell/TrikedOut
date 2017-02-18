using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;

public class Teleporter : MonoBehaviour
{
    public float angleToRotateOnExit = 180f;
    public float radiusToSpawn = 2f;

    public GameObject exit;

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            float xDiff = Random.Range(0f, radiusToSpawn);
            float zDiff = Random.Range(0f, radiusToSpawn);

            other.transform.position = exit.transform.position + new Vector3(xDiff, 0f, zDiff);
            other.transform.rotation = other.transform.rotation * Quaternion.Euler(0f, angleToRotateOnExit, 0f);

            other.GetComponent<RigidbodyFirstPersonController>().mouseLook.OverrideAngle(angleToRotateOnExit);
            other.GetComponent<RigidbodyFirstPersonController>().ManualUpdate();
        }
    }
}
