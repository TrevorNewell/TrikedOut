using UnityEngine;
using System.Collections;
using UnityEngine.UI;   

// Require a Rigidbody component to be attached to the same GameObject.
[RequireComponent (typeof (Rigidbody))]  

public class CarController : MonoBehaviour {  

	[Header("Current Vehicle Wheel Colliders")]
	[Space (10)]  
	// These variables allow the script to power the wheels of the car (plugin in wheelColliders here).
	public WheelCollider frontLeftWheel;
    public WheelCollider frontRightWheel;
	public WheelCollider rearLeftWheel;
	public WheelCollider rearRightWheel;

	//Grab UI Button gameObject references so we can find them in scene and enable visibility on each
	private GameObject gasButton; 
	private GameObject brakeButton;
	private GameObject leftTurnButton;
	private GameObject rightTurnButton;

	//cached references to the input script on each button 
	private CheckInput gasButtonScriptObject; 
	private CheckInput brakeButtonScriptObject;
	private CheckInput leftTurnButtonScriptObject;
	private CheckInput rightTurnButtonScriptObject; 
	[Space (10)] 
	[Header("Car Performance Settings")] 
	[Tooltip("Power of the Vehicle Engine")]
	public float engineTorque = 600f;  
	public float brakingPower = 300f; 
	[Tooltip("Input sensitivity for the sharpness of the steering")] 
	public float steeringSensitivity = 20f;
	[Tooltip("Increase for longer suspension, vehicle will ride higher")]  
	public float frontSuspHeight = .3f;
	public float rearSuspHeight = .3f;
	[Tooltip("Raise this value to tighten the suspension, Lower the value to loosen the suspension")] 
	public float suspSpring = 35000f; 
	[Tooltip("Raise this value to quicken the suspension response")] 
	public float suspDamping = 1200f;  
	public float suspTarget = .5f; 

	//front and side grip for the two front wheels of the vehicle 
	public float frontForwardGrip = 2f;
	public float frontSideGrip = 1.5f; 
	//front and side grip for the two rear wheels of the vehicle
	public float rearForwardGrip = 2f; 
	public float rearSideGrip = 1.65f;    
   
	public float downForce = 3f; //the downforce on the vehicle based on it's velocity  
	private float force; //private variable for applying the downForce. 
	public float speed = 0;    
	public Text mphText; 
	private Rigidbody playerRigidbody;
	private Transform thisTransform; //cached reference the Transform component on the root of our vehicle

	public Transform centerOfMassTransform;

	// variables for the vertical & horizontal input, can be mapped to keyboard or mobile inputs // 
	private float verticalInput;
	private float horizontalInput;
	private bool brakeInput;  
	[Space (10)]   
	[Header("Enable Mobile Input Control")]  
	public bool mobileInput = false; //this will be set by our "MobileInputUnityUI" object in the scene (if it exists).

	void Awake() {
		//if this script is present in the scene, we will automatically grab the buttons
		//by their name in the Hierarchy view.  
		FindControlButtons ();  
		
		#region Null Checks on Mobile Control Objects
		if(mobileInput) 
		{ 
			if(gasButton == null)
			{
				Debug.LogError("Please Assign the Gas Button object", gasButton); 
			}
			if(brakeButton == null)
			{
				Debug.LogError("Please Assign the Brake Button object", brakeButton); 
			}
			if(leftTurnButton == null)
			{
				Debug.LogError("Please Assign the Left Turn Button object", leftTurnButton); 
			}
			if(rightTurnButton == null) 
			{
				Debug.LogError("Please Assign the Right Turn Button object", rightTurnButton); 
			}
		}
		#endregion
	} 

	void FindControlButtons () {
		if(mobileInput) 
		{
			//for this to function the buttons need to be named exactly what is seen here
			gasButton = GameObject.Find ("GasButton");
			brakeButton = GameObject.Find ("BrakeButton");
			leftTurnButton = GameObject.Find ("LeftTurnButton");
			rightTurnButton = GameObject.Find ("RightTurnButton"); 

			//cache references to the script that exists on each button
			gasButtonScriptObject = gasButton.GetComponent<CheckInput>();
			brakeButtonScriptObject = brakeButton.GetComponent<CheckInput>();
			leftTurnButtonScriptObject = leftTurnButton.GetComponent<CheckInput>();
			rightTurnButtonScriptObject = rightTurnButton.GetComponent<CheckInput>();
		}
	}
	 
	void Start () {    

		//You can adjust from here for certain platforms. 24 is a good balance between PC and Mobile platforms.   
		Physics.defaultSolverIterations = 24;

		thisTransform = transform;   

		//Automatically grab the rigidbody component on the vehicle's root 
		playerRigidbody = GetComponent<Rigidbody>();       
		 
		if(centerOfMassTransform != null)
		{ 
			playerRigidbody.centerOfMass = centerOfMassTransform.transform.localPosition;
		}
		else if (centerOfMassTransform == null)  
		{
			Debug.LogError ("You need to find the Center Of Mass object and assign it to the CarController.cs script");
		}
		 
		//Make sure to set all WheelColliders to low Mass value such as 1, otherwise the wheel will not slow and accelerate as it should. 

		//Allow the designer to adjust the suspension ride height for rear axle and front axle of vehicle
		frontLeftWheel.suspensionDistance = frontSuspHeight;
		frontRightWheel.suspensionDistance = frontSuspHeight;
		rearLeftWheel.suspensionDistance = rearSuspHeight;
		rearRightWheel.suspensionDistance = rearSuspHeight;   

		// set up JointSpring for the suspension settings
		JointSpring suspJointSpring = new JointSpring();

		suspJointSpring.damper = suspDamping;
		suspJointSpring.spring = suspSpring;
		suspJointSpring.targetPosition = suspTarget;  

		frontLeftWheel.suspensionSpring = suspJointSpring;
		frontRightWheel.suspensionSpring = suspJointSpring;
		rearLeftWheel.suspensionSpring = suspJointSpring;     
		rearRightWheel.suspensionSpring = suspJointSpring; 

		WheelFrictionCurve curveFrontForward = new WheelFrictionCurve();
		WheelFrictionCurve curveFrontSideways = new WheelFrictionCurve();
		WheelFrictionCurve curveRearForward = new WheelFrictionCurve(); 
		WheelFrictionCurve curveRearSideways = new WheelFrictionCurve(); 

		curveFrontForward.extremumSlip = .4f;
		curveFrontForward.extremumValue = 1f;
		curveFrontForward.asymptoteSlip = .8f;
		curveFrontForward.asymptoteValue = .5f;

		curveFrontSideways.extremumSlip = .2f;
		curveFrontSideways.extremumValue = 1f;
		curveFrontSideways.asymptoteSlip = .5f;
		curveFrontSideways.asymptoteValue = .75f; 

		curveRearForward.extremumSlip = .4f;
		curveRearForward.extremumValue = 1f;
		curveRearForward.asymptoteSlip = .8f;
		curveRearForward.asymptoteValue = .5f;
		
		curveRearSideways.extremumSlip = .2f; 
		curveRearSideways.extremumValue = 1f;
		curveRearSideways.asymptoteSlip = .5f;
		curveRearSideways.asymptoteValue = .75f;

		curveFrontForward.stiffness = frontForwardGrip;
		curveFrontSideways.stiffness = frontSideGrip;
		curveRearForward.stiffness = rearForwardGrip; 
		curveRearSideways.stiffness = rearSideGrip; 

		frontLeftWheel.forwardFriction = curveFrontForward;
		frontLeftWheel.sidewaysFriction = curveFrontSideways;

		frontRightWheel.forwardFriction = curveFrontForward;
		frontRightWheel.sidewaysFriction = curveFrontSideways;

		rearLeftWheel.forwardFriction = curveRearForward;
		rearLeftWheel.sidewaysFriction = curveRearSideways; 
		
		rearRightWheel.forwardFriction = curveRearForward;
		rearRightWheel.sidewaysFriction = curveRearSideways;
	}

	void Update() { 
		//we check the input for either mobile or PC platfor
		CheckInput ();

		if(playerRigidbody != null)    
		{
			speed = playerRigidbody.velocity.magnitude * 2.237f; //2.237 
		}
		if( mphText != null) 
		{ 
			mphText.text = speed.ToString("F0") + " MPH"; // displays one digit after the dot, prints our MPH to the UI 
		}
	} 

	void CheckInput()
    {
		if(mobileInput) //We ticked "on" the little "Mobile Input" checkbox on this vehicle    
		{  
			ControlGas(gasButtonScriptObject.isButtonPressed);  
			ControlBrakes(brakeButtonScriptObject.isButtonPressed);
			ControlLeftTurn(leftTurnButtonScriptObject.isButtonPressed);
			ControlRightTurn(rightTurnButtonScriptObject.isButtonPressed);
		}

		else  //Not a mobile build and we want to control with a keyboard  
		{
			verticalInput = Input.GetAxis("Vertical");
			horizontalInput = Input.GetAxis("Horizontal");
			brakeInput = Input.GetButton("Jump");  
		}
	}

	void ControlLeftTurn(bool pressed) {    
		
		if(pressed == true)  
		{
			horizontalInput = Mathf.Lerp(horizontalInput, -1f, 1 * .1f);   
		}
		else 
			horizontalInput = Mathf.Lerp(horizontalInput, 0, 1 * .1f); 
	}

	void ControlRightTurn(bool pressed) {   
		
		if(pressed == true)  
		{
			horizontalInput = Mathf.Lerp(horizontalInput, 1f, 1 * .1f);
		} 
	}
	
	void ControlGas(bool pressed) {  
		
		if(pressed == true) 
		{
			verticalInput = 1f;
		}
		else
			verticalInput = 0f; 
	}
	void ControlBrakes(bool pressed) {  
		
		if(pressed == true) 
		{
			verticalInput = -1f;  
		}
	}
	
	void FixedUpdate () {  
		//track the vehicle's speed for reading out the MPH or applying downforce to the vehicle 
		speed = Vector3.Dot(GetComponent<Rigidbody>().velocity, transform.forward);
 
		// the steer angle is a sensitivity value multiplied by the user input. 
		frontLeftWheel.steerAngle = steeringSensitivity * horizontalInput; 
		frontRightWheel.steerAngle = steeringSensitivity * horizontalInput; 

		CheckBrakes (); //Call method that is checking for brake input and apply the brake power    
		ApplyDownForce(); //Call method that will apply a downforce to vehicle based on velocity 
		CheckMotor (); //Call the method that applies the motor torque to the wheels of the vehicle  
	} 

	void CheckMotor() { 
		frontLeftWheel.motorTorque = engineTorque * verticalInput * 10f; 
		frontRightWheel.motorTorque = engineTorque * verticalInput * 10f;     
	}
	   
	void CheckBrakes() { 
		//if we've held down the Space Bar on the keyboard, then apply the brakes 
		if(brakeInput)                 
		{
			//apply the brake power variable here and slow the wheelCollider revolutions
			frontRightWheel.brakeTorque = brakingPower; 
			frontLeftWheel.brakeTorque = brakingPower;
			rearLeftWheel.brakeTorque = brakingPower; 
			rearRightWheel.brakeTorque = brakingPower;     
		}   
		else  
		{	
			//if brakes are not being applied 
			frontRightWheel.brakeTorque  = 0; 
			frontLeftWheel.brakeTorque = 0;
			rearLeftWheel.brakeTorque = 0; 
			rearRightWheel.brakeTorque = 0; 
		} 
	}

	void ApplyDownForce() {  

		force = downForce * playerRigidbody.velocity.sqrMagnitude;
		playerRigidbody.AddForceAtPosition(force * -thisTransform.up, thisTransform.position);  
	} 
}



