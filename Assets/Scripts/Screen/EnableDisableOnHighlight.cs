using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;

// Attach to a button, and set the parameter to enable when highlighted and disable when not highlighted.  I used this to activate a spotlight when a player had moved the cursor to a button indicating he wanted trike 1.
public class EnableDisableOnHighlight : MonoBehaviour, ISelectHandler, IDeselectHandler
{
    public GameObject objectToTurnOnOff;

    public void OnSelect(BaseEventData eventData)
    {
        //Debug.Log("This bitch " + this.gameObject.name + " was selected.");

        objectToTurnOnOff.SetActive(true);
    }

    public void OnDeselect(BaseEventData eventData)
    {
        //Debug.Log("Deselected this " + this.gameObject.name + " bitch.");

        objectToTurnOnOff.SetActive(false);
    }
}
