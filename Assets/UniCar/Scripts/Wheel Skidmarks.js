#pragma strict

@script RequireComponent(WheelCollider)//We need a wheel collider

var vehicleRigidbody : GameObject;//The parent oject having a rigidbody attached to it.
var startSlipValue : float = .15f; 
private var skidmarks : Skidmarks = null;//To hold the skidmarks object
private var lastSkidmark : int = -1;//To hold last skidmarks data
private var wheel_col : WheelCollider;//To hold self wheel collider

function Start ()
{
	//Get the Wheel Collider attached to self
	wheel_col = GetComponent(WheelCollider); 
	
	vehicleRigidbody = GameObject.FindWithTag("Player"); 
	  
	//find object "Skidmarks" from the game
	if(FindObjectOfType(Skidmarks))
	{
		skidmarks = FindObjectOfType(Skidmarks);
	}
	else
		Debug.Log("No skidmarks object found. Skidmarks will not be drawn");
		
	if(vehicleRigidbody == null) 
		Debug.LogError("No Vehicle Rigidbody Assigned. Please assign the vehicle's rigidbody."); 
}

function FixedUpdate () //This has to be in fixed update or it wont get time to make skidmesh fully.
{
	var GroundHit : WheelHit; //variable to store hit data
	wheel_col.GetGroundHit( GroundHit );//store hit data into GroundHit
	var wheelSlipAmount = Mathf.Abs( GroundHit.sidewaysSlip );

	if ( wheelSlipAmount > startSlipValue ) //if sideways slip is more than desired value
	{ 
		if(vehicleRigidbody != null)
		{	//Rigidbody moves fast so we multiply the rigidbody's velocity vector x 2 to get the correct position
			var skidPoint : Vector3 = GroundHit.point + 3 * (vehicleRigidbody.GetComponent.<Rigidbody>().velocity) * Time.deltaTime;
		} 
		//Add skidmark at the point using AddSkidMark function of the Skidmarks object 
		lastSkidmark = skidmarks.AddSkidMark(skidPoint, GroundHit.normal, wheelSlipAmount/25, lastSkidmark);	
	}
	else
	{
		//stop making skidmarks
		lastSkidmark = -1; 
	}	
}
