using UnityEngine;
using System.Collections;

public class Move : MonoBehaviour
{
    public Vector3 position;
    public Vector3 velocity;
    private Car thisCharactersCar;  // We need access to the attributes of this characters car so we can update the location of the car accordingly

	// Use this for initialization
	void Start ()
    {
        position = gameObject.transform.position;

        // How to disable attaching this script to a GameObject if a Character script isn't present? This way we can freely and safely interact with the car object attached to the same GameObject as Character requires both the Move and the Car scripts.
        thisCharactersCar = GetComponent<Car>();

        // Require RigidBody on any GameObject that has this component for its velocity component
    }
}
