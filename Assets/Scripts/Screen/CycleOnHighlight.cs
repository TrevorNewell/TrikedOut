using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class CycleOnHighlight : MonoBehaviour, ISelectHandler, IDeselectHandler {

    public Sprite[] sprites;
    private SpriteState[] theStates;

    public float cycleTime = 0.2f;
    private bool cycle = false;

    private Button theButton;

    private float time = 0.0f;
    private int currentIndex = 0;
    private int maxIndex;

    private bool isFirst = true;

	// Use this for initialization
	void Awake ()
    {
        theButton = GetComponent<Button>();

        theStates = new SpriteState[sprites.Length];

        int i = 0;
        foreach(Sprite s in sprites)
        {
            SpriteState t = new SpriteState();

            t.disabledSprite = theButton.spriteState.disabledSprite;
            t.pressedSprite = theButton.spriteState.pressedSprite;
            t.highlightedSprite = sprites[i];

            theStates[i] = t;

            i++;
        }

        maxIndex = sprites.Length - 1;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if (cycle)
        {
            time += Time.deltaTime;

            if (time > cycleTime)
            {
                time = 0;

                if (currentIndex > maxIndex) currentIndex = 0;

                theButton.spriteState = theStates[currentIndex]; //.highlightedSprite = sprites[currentIndex];

                currentIndex++;
            }
        }
	}

    public void OnSelect(BaseEventData eventData)
    {
        cycle = true;
        Debug.Log("Selected: " + gameObject.name);

        if (isFirst)
        {
            isFirst = false;

            if (currentIndex > maxIndex) currentIndex = 0;

            theButton.spriteState = theStates[currentIndex]; //.highlightedSprite = sprites[currentIndex];

            currentIndex++;
        }
    }

    public void OnDeselect(BaseEventData eventData)
    {
        cycle = false;
        Debug.Log("Deselected: " + gameObject.name);
    }
}
