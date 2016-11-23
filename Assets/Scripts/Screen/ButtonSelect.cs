using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class ButtonSelect : MonoBehaviour
{
    public Button[] buttons = new Button[10];
    public int columnCount = 1;
    private int columnSize;
    private int current;

	// Use this for initialization
	void Start ()
    {
        current = 0;
        buttons[current].Select();
        columnSize = buttons.Length / columnCount;

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

    }

    public void SelectRight()
    {

    }

    public void Click()
    {
        buttons[current].onClick.Invoke();
    }
}
