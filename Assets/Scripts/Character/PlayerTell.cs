using UnityEngine;
using System.Collections;

public class PlayerTell : MonoBehaviour
{

    public int directionalID;

    void OnTriggerEnter(Collider c)
    {
        if (c.CompareTag("Player"))
        {
            transform.parent.GetComponent<Player>().TellItemDirectional(directionalID);
        }
    }
}
