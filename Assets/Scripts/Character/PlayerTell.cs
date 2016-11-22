using UnityEngine;
using System.Collections;

public class PlayerTell : MonoBehaviour
{

    public int directionalID;
    private int playerID;

    void Start()
    {
        playerID = transform.parent.GetComponentInParent<Player>().GetID();
    }

    void OnTriggerEnter(Collider c)
    {
        if (c.CompareTag("Player"))
        {
            if (c.GetComponent<Player>().GetID() != playerID)
                transform.parent.GetComponentInParent<Player>().TellItemDirectional(directionalID);
        }
    }
}
