using UnityEngine;
using System.Collections;

[RequireComponent (typeof (Rigidbody))]

public class MaxSpeedLimit : MonoBehaviour {
	 
	// This script uses drag as well as hard clamping to limit the velocity of a rigidbody//

	// The velocity at which drag should begin being applied.
	[Tooltip("Velocity at which drag will begin being applied.")]
	public float dragStartVelocity = 30f;  

	// The velocity at which drag should equal maxDrag. 
	private float dragMaxVelocity;  

	// The maximum allowed velocity. The velocity will be clamped to keep
	// it from exceeding this value. (Note: this value should be greater than
	// or equal to dragMaxVelocity.)
	[Tooltip("The maximum allowed velocity.")]
	public float maxVelocity = 35f;
	
	// The maximum drag to apply. This is the value that will
	// be applied if the velocity is equal or greater
	// than dragMaxVelocity. Between the start and max velocities,
	// the drag applied will go from 0 to maxDrag, increasing
	// the closer the velocity gets to dragMaxVelocity.
	[Tooltip("The maximum drag you wish to apply.")]
	public float maxDrag = 1.0f;
	
	// The original drag of the object, which we use if the velocity is below dragStartVelocity.
	private float originalDrag;
	// Cache the rigidbody to avoid GetComponent calls behind the scenes.
	private Rigidbody rb;
	// Cached values used in FixedUpdate
	private float sqrDragStartVelocity;
	private float sqrDragVelocityRange; 
	private float sqrMaxVelocity;

	void Awake() { 
		originalDrag = GetComponent<Rigidbody>().drag; 
		rb = GetComponent<Rigidbody>();
		Init(dragStartVelocity, dragMaxVelocity, maxVelocity, maxDrag);

		dragMaxVelocity = maxVelocity - 5f; //always make sure drag max is lower than max velocity.
	} 
	
	// Sets the threshold values and calculates cached variables used in FixedUpdate.
	// Outside callers who wish to modify the thresholds should use this function. Otherwise,
	// the cached values will not be recalculated.
	void Init(float dragStartVelocity, float dragMaxVelocity,float maxVelocity, float maxDrag)
	{
		this.dragStartVelocity = dragStartVelocity;
		this.dragMaxVelocity = dragMaxVelocity;
		this.maxVelocity = maxVelocity;
		this.maxDrag = maxDrag; 
		
		// Calculate cached values
		sqrDragStartVelocity = dragStartVelocity * dragStartVelocity;
		sqrDragVelocityRange = (dragMaxVelocity * dragMaxVelocity) - sqrDragStartVelocity;
		sqrMaxVelocity = maxVelocity * maxVelocity;
	}
	// We limit the velocity here to account for gravity and to allow the drag to be relaxed
	// over time, even if no collisions are occurring.
	void FixedUpdate() {
		var v = rb.velocity; 
		// We use sqrMagnitude instead of magnitude for performance reasons.
		var vSqr = v.sqrMagnitude; 
		
		if(vSqr > sqrDragStartVelocity){
			GetComponent<Rigidbody>().drag = Mathf.Lerp(originalDrag, maxDrag, Mathf.Clamp01((vSqr - sqrDragStartVelocity)/sqrDragVelocityRange));
			
			// Clamp the velocity, if necessary
			if(vSqr > sqrMaxVelocity)
			{ 
				// Vector3.normalized returns this vector with a magnitude
				// of 1. This ensures that we're not messing with the
				// direction of the vector, only its magnitude.
				rb.velocity = v.normalized * maxVelocity;
			}
		} else {
			rb.drag = originalDrag;
		}
	}
}
