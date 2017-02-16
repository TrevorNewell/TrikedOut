using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class Highlighted : MonoBehaviour, ISelectHandler
{
    public bool left = false;

    public void OnSelect(BaseEventData eventData)
    {
        if (left)
        {
            //SendMessageUpwards("TransitionLeft");
        }
        else
        {
            //SendMessageUpwards("TransitionRight");
        }
    }

}
