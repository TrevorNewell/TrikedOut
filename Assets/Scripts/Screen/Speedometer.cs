using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Speedometer : MonoBehaviour
{
    public NewMove player;
    public float maxAngle;
    public float angleSpeed = 3f;
    private float minAngle;
    private float maxDiff;
    private float currentDiff;
    private RectTransform rectTransform;

	// Use this for initialization
	void Start ()
    {
        rectTransform = GetComponent<RectTransform>();
        minAngle = rectTransform.rotation.eulerAngles.z;
        maxDiff = maxAngle - minAngle;
        currentDiff = 0f;
	}
	
	// Update is called once per frame
	void Update ()
    {
        currentDiff = Mathf.Lerp(currentDiff, player.GetCurrentAdjustedSpeed() * maxDiff, angleSpeed * Time.deltaTime);
        rectTransform.localRotation = Quaternion.Euler(0f, 0f, minAngle + currentDiff);
	}
}
