using UnityEngine;
using System.Collections;

public class BatCollider : MonoBehaviour
{
    public Bat bat;

    void OnTriggerEnter(Collider c)
    {
        if (c.CompareTag("Player"))
        {
            if (bat.Swinging())
            {
                c.gameObject.GetComponent<Player>().Damage(bat.damage);
            }
        }
    }
}
