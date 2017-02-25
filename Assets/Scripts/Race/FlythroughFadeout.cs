using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FlythroughFadeout : MonoBehaviour
{
    public float timeToFade = 2f;
    public float fadeOffset = 0f;

    private float timeUntilFade = 100f;
    private MeshRenderer mr;
    private float currentAlpha = 0;
    private float alphaPerSecond;
    private Color color;
    private float currentTime;
	// Use this for initialization
	void Start ()
    {
        mr = GetComponent<MeshRenderer>();
        color = new Color(1f, 1f, 1f, currentAlpha);
        mr.material.color = color;

        alphaPerSecond = 1 / timeToFade;
	}

    public void SetLength(float al)
    {
        timeUntilFade = al - timeToFade - fadeOffset;
    }
	
	// Update is called once per frame
	void Update ()
    {
        currentTime += Time.deltaTime;
        if (currentTime > timeUntilFade)
        {
            currentAlpha += alphaPerSecond * Time.deltaTime;
            if (currentAlpha > 1) currentAlpha = 1;
            color.a = currentAlpha;
            mr.material.color = color;
        }
	}
}
