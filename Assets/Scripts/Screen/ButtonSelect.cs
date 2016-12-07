using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ButtonSelect : MonoBehaviour
{
    public Selectable[] buttons = new Selectable[10];
    public int columnCount = 1;

    [Range(0, 1)] public float sliderIncrement = 0.05f;

    private int columnSize;
    public int current = 0;

	// Use this for initialization
	void Start ()
    {
        if (!StateManager.instance.isMainMenu)
        {
            current = 0;
            buttons[current].Select();
            columnSize = buttons.Length / columnCount;
        }
    }

    public void SelectUp()
    {
        current--;
        if (current < 0) current = columnSize - 1;
        buttons[current].Select();
    }

    public void SelectDown()
    {
        current++;
        if (current > columnSize - 1) current = 0;
        buttons[current].Select();
    }

    public void SelectLeft()
    {
        if (buttons[current].GetType() == typeof(Slider))
        {
            Slider slider = buttons[current] as Slider;
            if (slider.value - sliderIncrement < slider.minValue) slider.value = slider.minValue;
            else slider.value -= sliderIncrement;
        }
    }

    public void SelectRight()
    {
        if (buttons[current].GetType() == typeof(Slider))
        {
            Slider slider = buttons[current] as Slider;
            if (slider.value + sliderIncrement > slider.maxValue) slider.value = slider.maxValue;
            else slider.value += sliderIncrement;
        }

    }

    public void Click()
    {
        if (buttons[current].GetType() == typeof(Button))
        {
            //print("I'm a button");
            Button temp = buttons[current] as Button;//onClick.Invoke();
            temp.onClick.Invoke();
        }
        else // If we don't have a button selected (as is the case with the sliders on our options menu, then we do nothing when they click), we won't have an onClick property.
        {

        }
    }
}
