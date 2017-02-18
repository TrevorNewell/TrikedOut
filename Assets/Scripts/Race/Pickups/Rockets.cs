using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rockets : MonoBehaviour
{
    public GameObject rocketL;
    public GameObject rocketR;

    public float minRot = -1.5f;
    public float maxRot = 1.5f;

    public float startScale = 0.0001f;
    public float growthPerSecond = 0.1f;

    private float currentScale;
    private float ogScale;
    private bool active;
    private bool shrink;
    private float currentTime = 0f;
    private float duration;

	// Use this for initialization
	void Start ()
    {
        ogScale = rocketL.transform.localScale.x;
        rocketL.transform.localScale = Vector3.one * startScale;
        rocketR.transform.localScale = Vector3.one * startScale;
        currentScale = startScale;

        rocketL.SetActive(false);
        rocketR.SetActive(false);
	}

    public void Activate(float d)
    {
        active = true;
        currentTime = 0f;
        duration = d;
        rocketL.SetActive(true);
        rocketR.SetActive(true);
    }

    private void FixedUpdate()
    {
        if (active)
        {
            if (currentScale < ogScale)
            {
                currentScale += growthPerSecond * Time.deltaTime;
            }
            else
            {
                currentScale = ogScale;
            }

            rocketL.transform.localScale = Vector3.one * currentScale;
            rocketR.transform.localScale = Vector3.one * currentScale;
            transform.localRotation = Quaternion.Euler(new Vector3(0f, 0f, Random.Range(minRot, maxRot)));
            currentTime += Time.deltaTime;
            if (currentTime > duration)
            {
                active = false;
                shrink = true;
            }
        }
        else
        {
            if (currentScale > startScale)
            {
                currentScale -= growthPerSecond * Time.deltaTime;
                rocketL.transform.localScale = Vector3.one * currentScale;
                rocketR.transform.localScale = Vector3.one * currentScale;
            }
            else
            {
                if (shrink)
                {
                    rocketL.transform.localScale = Vector3.one * startScale;
                    rocketR.transform.localScale = Vector3.one * startScale;
                    currentScale = startScale;

                    rocketL.SetActive(false);
                    rocketR.SetActive(false);

                    shrink = false;
                }
            }
        }
    }
}
