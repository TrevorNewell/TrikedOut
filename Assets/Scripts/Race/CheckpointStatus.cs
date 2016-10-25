using UnityEngine;
using System.Collections;

public class CheckpointStatus : MonoBehaviour
{
    public bool isFront = false;

    private bool hasTriggered = false;

	// Use this for initialization
	void Start ()
    {
	    
	}
	
    public bool GetHasTriggered()
    {
        return hasTriggered;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player")) // || other.CompareTag AI!
        {
            hasTriggered = true;
            if (isFront)
            {
                gameObject.GetComponentInParent<Checkpoint>().UpdateFront();
            }
            else
            {
                gameObject.GetComponentInParent<Checkpoint>().UpdateBack();
            }
        }
    }
}
