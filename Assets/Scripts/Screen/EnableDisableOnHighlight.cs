using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;

// Attach to a button, and set the parameter to enable when highlighted and disable when not highlighted
public class EnableDisableOnHighlight : MonoBehaviour, ISelectHandler, IDeselectHandler
{
    public GameObject objectToTurnOnOff;
    public Button theButton;

    public void OnSelect(BaseEventData eventData)
    {
        Debug.Log("This bitch " + this.gameObject.name + " was selected.");
        objectToTurnOnOff.SetActive(true);
    }

    public void OnDeselect(BaseEventData eventData)
    {
        Debug.Log("Deselected this " + this.gameObject.name + " bitch.");

        objectToTurnOnOff.SetActive(false);
    }

	// Use this for initialization
	void Start ()
    {
        theButton = gameObject.GetComponent<Button>();
	}
	
	// Update is called once per frame
	void Update ()
    {
	
	}
}
