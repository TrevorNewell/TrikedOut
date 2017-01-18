using UnityEngine;
using System.Collections;

public class WheelAlignment : MonoBehaviour {    
	
	// Define the variables used in the script, the Corresponding collider is the wheel collider at the position of
	// the visible wheel, the slip prefab is the prefab instantiated when the wheels slide, the rotation value is the
	// value used to rotate the wheel around it's axle.
	public WheelCollider correspondingCollider;
	public GameObject grassParticleFX;
	public GameObject dirtParticleFX;
	public GameObject asphaltParticleFX;
	public GameObject waterParticleFX; 

	private bool isCreated = false;  
	private Transform tempSkidTrail; 
	private float rotationValue = 0.0f;

	void Update () {
		
		// define a hit point for the raycast collision
		RaycastHit hit;
		// Find the collider's center point, you need to do this because the center of the collider might not actually be
		// the real position if the transform's off.
		Vector3 colliderCenterPoint = correspondingCollider.transform.TransformPoint( correspondingCollider.center );
		
		// now cast a ray out from the wheel collider's center the distance of the suspension, if it hit something, then use the "hit"
		// variable's data to find where the wheel hit, if it didn't, then se tthe wheel to be fully extended along the suspension.
		if ( Physics.Raycast( colliderCenterPoint, -correspondingCollider.transform.up, out hit, correspondingCollider.suspensionDistance + correspondingCollider.radius ))
		{
			transform.position = hit.point + (correspondingCollider.transform.up * correspondingCollider.radius); 
		}
		else
		{
			transform.position = colliderCenterPoint - (correspondingCollider.transform.up * correspondingCollider.suspensionDistance);
		}
		
		// now set the wheel rotation to the rotation of the collider combined with a new rotation value. This new value
		// is the rotation around the axle, and the rotation from steering input.
		transform.rotation = correspondingCollider.transform.rotation * Quaternion.Euler( rotationValue, correspondingCollider.steerAngle, 0);
		// increase the rotation value by the rotation speed (in degrees per second)
		rotationValue += correspondingCollider.rpm * ( 360/60 ) * Time.deltaTime;
		
		// define a wheelhit object, this stores all of the data from the wheel collider and will allow us to determine
		// the slip of the tire.
		WheelHit correspondingGroundHit;
		correspondingCollider.GetGroundHit( out correspondingGroundHit );
		
		// if the slip of the tire is greater than 2.0, and the slip prefab exists, create an instance of it on the ground at
		// a zero rotation.
		if ( Mathf.Abs( correspondingGroundHit.sidewaysSlip ) > .2f )    
		{
			if( correspondingGroundHit.collider != null &&  correspondingGroundHit.collider.gameObject.tag == "Grass")   
			{ 
				if (grassParticleFX)  
				{
					Instantiate( grassParticleFX, correspondingGroundHit.point, Quaternion.identity );
					//StartSkidTrail(grassSkidFX); 
				}
			}
			if( correspondingGroundHit.collider != null &&  correspondingGroundHit.collider.gameObject.tag == "Dirt")  
			{
				if (dirtParticleFX)
				{
					Instantiate( dirtParticleFX, correspondingGroundHit.point, Quaternion.identity );
					//StartSkidTrail(dirtSkidFX);  
				}
			} 
			if( correspondingGroundHit.collider != null &&  correspondingGroundHit.collider.gameObject.tag == "Asphalt") 
			{
				if (asphaltParticleFX)  
				{
					Instantiate( asphaltParticleFX, correspondingGroundHit.point, Quaternion.identity );
					//StartSkidTrail(asphaltSkidFX);      
				}
			}
			if( correspondingGroundHit.collider != null &&  correspondingGroundHit.collider.gameObject.tag == "Water") 
			{ 
				if (waterParticleFX) 
				{
					Instantiate( waterParticleFX, correspondingGroundHit.point, Quaternion.identity );
					//StartSkidTrail(waterSkidFX); 
				} 
			}
		}
	}

	public void StartSkidTrail(Transform tempFX) 
	{ 
		if(!isCreated)
		{
			if(tempFX)  
			{ 
				tempSkidTrail = Instantiate(tempFX);     
				tempSkidTrail.parent = GameObject.FindWithTag("Player").transform;       
				tempSkidTrail.position = new Vector3(correspondingCollider.transform.position.x, correspondingCollider.transform.position.y - .55f, correspondingCollider.transform.position.z);      

				TrailRenderer tempObj = tempSkidTrail.GetComponent<TrailRenderer>();
				tempObj.startWidth = correspondingCollider.radius;
				tempObj.endWidth = correspondingCollider.radius; 
				  
				isCreated = true;  
				Invoke ("EndSkidTrail", 1f); 
			}
		}
	}
	 	 
	public void EndSkidTrail() 
	{  
		isCreated = false; 
		tempSkidTrail.parent = null;     
	}
}



