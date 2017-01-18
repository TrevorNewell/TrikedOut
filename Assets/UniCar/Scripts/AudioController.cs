using UnityEngine;
using System.Collections;

public class AudioController : MonoBehaviour {

	//Controls all audio sound FX produced by the vehicle//  
	 
	public float windVolume = 1.0f; 
	public float grassSlipVolume = 1f;
	public float dirtSlipVolume = 1f;
	public float asphaltSlipVolume = .4f;
	public float waterSlipVolume = 1f;  
	public AudioSource engineAudio = null; //audioSource for our engine sound 
	public AudioSource windAudio = null; //audioSource for our ambient wind or road sound
	public AudioSource wheelSlipAudio; //audioSource for our wheel slipping sound
	public  AudioClip[] wheelSlipSounds; 
	 
	//Audio variables for the bumping and crashing sounds// 
	public AudioSource impactSoundAudio = null; 
	public  AudioClip[] impactSounds;
	public float impactThreshold = 1f;
	private int whichCue; 

	//pitch of the engine whilst not accelerating
	public float idlePitch = 0.7f; 
	//the target pitch to attain when the vehicle is moving forwards
	public float fullAccelPitch = 1.2f;
	//the target pitch to attain when the vehicle is moving backwards
	public float fullReversePitch = -1.1f;
	public float rateOfPitchChange = .012f;  
	
	private Rigidbody myRigidbody = null;
	private float carSpeed = 0f; 
	private float verticalInput = 0f;
	private float  tempEngineAudioPitch;

	public WheelCollider wheelCollider; 
	private WheelHit correspondingGroundHit; 
	private float slideSpeed; 
	 
	void Start()
	{
 		if(engineAudio != null)
		{
			engineAudio.playOnAwake = true;
			engineAudio.loop = true;
			engineAudio.rolloffMode = AudioRolloffMode.Linear;  
			engineAudio.minDistance = 150f;
		}
		if(windAudio != null) 
		{
			windAudio.playOnAwake = true;	
			windAudio.loop = true; 
			windAudio.rolloffMode = AudioRolloffMode.Linear;  
			windAudio.minDistance = 150;
		}
		myRigidbody = transform.GetComponent<Rigidbody>(); 
	}

	void OnCollisionEnter (Collision otherCollider)
	{ 
		// when our car has a collision, this method will be triggered. Here, we check the magnitude of the collision to see if it is
		// higher than our threshold, in which case we play one of the crash sounds from our impacts AudioClip array 
		if (otherCollider.relativeVelocity.magnitude > impactThreshold) 
		{ 
			// pick random sound to play from our sound array 
			whichCue = Random.Range(0, impactSounds.Length); 
			// tell our audio source to play a one shot sound of our chosen random sound
			impactSoundAudio.PlayOneShot(impactSounds[whichCue]); 
		} 
	}
	
	void FixedUpdate()
	{	
		if(myRigidbody != null)
		{ 
			//we will track the speed of the rigidbody through the world 
			carSpeed = myRigidbody.velocity.magnitude; 
		}
	}

	void Update() 
	{
		UpdateWheelSound (); 
		 
		verticalInput = Input.GetAxis("Vertical"); //grab access to the vertical input for throttle emulation 
		 
		windAudio.volume = Mathf.Lerp(0.0f, .15f, carSpeed * .025f);  
		engineAudio.volume = Mathf.Lerp(0.2f, .35f, carSpeed * .1f); 

		if (verticalInput == 0)
		{
			//The vehicle is idling so we want to set the pitch to idlePitch, but we don't want the pitch to just jump, so we use
			//Mathf.MoveTowards to gradually 'move' audio.pitch towards idlePitch, by rateOfPitchChange. Where pitchModifier is the rate of change.
			engineAudio.pitch = Mathf.MoveTowards(engineAudio.pitch, idlePitch * tempEngineAudioPitch * 1.35f, rateOfPitchChange);    
		}
		else if (verticalInput > 0) //if the user has pressed the 'w' key or Up Arrow on the keyboard 
		{   
			//basicly the same as above, just moves the pitch towards movingForwardsPitch
			engineAudio.pitch = Mathf.MoveTowards(engineAudio.pitch, fullAccelPitch * tempEngineAudioPitch, rateOfPitchChange);      
		} 
		else if (verticalInput < 0) // if the user has pressed the 's' key or Down Arrow on the keyboard 
		{ 
			//moves pitch towards movingBackwardsPitch 
			engineAudio.pitch = Mathf.MoveTowards(engineAudio.pitch, fullReversePitch * tempEngineAudioPitch, rateOfPitchChange);
		}
		CheckGears (); // go down and simulate gears based on the velocity of the vehicle's rigibody 
	}  

	//method for controlling skidding sounds while vehicle is sliding
	void UpdateWheelSound ()
	{	 
		wheelCollider.GetGroundHit(out correspondingGroundHit);   
		// if the slip of the tire is greater than 2.0, and the slip prefab exists, create an instance of it on the ground at a zero rotation.
		slideSpeed = Mathf.Abs( correspondingGroundHit.sidewaysSlip );
		 
		if(wheelSlipAudio != null) //check to make sure we do have audio for wheel slippage assigned in the inspector
		{
			if(slideSpeed >= .20f && wheelSlipAudio.isPlaying == false)    
			{ 
				if(correspondingGroundHit.collider != null && correspondingGroundHit.collider.gameObject.tag == "Grass")
				{    
					wheelSlipAudio.volume = grassSlipVolume;
					wheelSlipAudio.clip = wheelSlipSounds[0];//1st sound in the arry for grass SFX 
					wheelSlipAudio.Play(); 
				}
				if(correspondingGroundHit.collider != null && correspondingGroundHit.collider.gameObject.tag == "Dirt")  
				{
					wheelSlipAudio.volume = dirtSlipVolume;
					wheelSlipAudio.clip = wheelSlipSounds[1];//2nd sound in the arry for dirt SFX  
					wheelSlipAudio.Play(); 
				}
				if(correspondingGroundHit.collider != null && correspondingGroundHit.collider.gameObject.tag == "Asphalt")
				{  
					wheelSlipAudio.volume = asphaltSlipVolume;
					wheelSlipAudio.clip = wheelSlipSounds[2]; //3rd sound in the arry for asphalt SFX   
					wheelSlipAudio.Play();
				}
				if(correspondingGroundHit.collider != null && correspondingGroundHit.collider.gameObject.tag == "Water")  
				{   
					wheelSlipAudio.volume = waterSlipVolume; 
					wheelSlipAudio.clip = wheelSlipSounds[3]; //4th sound in the arry for water SFX
					wheelSlipAudio.Play();
				}
			}  
			 
			if(slideSpeed <= -.20f && wheelSlipAudio.isPlaying == false)    
			{
				if(correspondingGroundHit.collider != null && correspondingGroundHit.collider.gameObject.tag == "Grass")
				{   
					wheelSlipAudio.volume = grassSlipVolume;
					wheelSlipAudio.clip = wheelSlipSounds[0];//1st sound in the arry for grass SFX 
					wheelSlipAudio.Play(); 
				}
				if(correspondingGroundHit.collider != null && correspondingGroundHit.collider.gameObject.tag == "Dirt")
				{
					wheelSlipAudio.volume = dirtSlipVolume;
					wheelSlipAudio.clip = wheelSlipSounds[1];//2nd sound in the arry for dirt SFX  
					wheelSlipAudio.Play(); 
				}
				if(correspondingGroundHit.collider != null && correspondingGroundHit.collider.gameObject.tag == "Asphalt")
				{  
					wheelSlipAudio.volume = asphaltSlipVolume;
					wheelSlipAudio.clip = wheelSlipSounds[2]; //3rd sound in the arry for asphalt SFX   
					wheelSlipAudio.Play();
				} 
				if(correspondingGroundHit.collider != null && correspondingGroundHit.collider.gameObject.tag == "Water")  
				{   
					wheelSlipAudio.volume = waterSlipVolume; 
					wheelSlipAudio.clip = wheelSlipSounds[3]; //4th sound in the arry for water SFX
					wheelSlipAudio.Play();
				} 
			}
			
			else if(slideSpeed <= .20f && slideSpeed > -.20f)        
			{     
				wheelSlipAudio.volume = 0.0f;   
				wheelSlipAudio.Stop();     
			}
		}
	}
	
	void CheckGears() { 
		 
		if (carSpeed < 10f)    
		{ //first gear
			tempEngineAudioPitch = Mathf.Lerp (.4f, 1.40f, carSpeed * .075f);  
		}
		else if (carSpeed > 10f && carSpeed < 19f)
		{ //second gear
			tempEngineAudioPitch = Mathf.Lerp (.4f, 1.50f, carSpeed / 2f * .075f);   
		}
		else if (carSpeed > 19f && carSpeed < 25f)
		{ //third gear
			tempEngineAudioPitch = Mathf.Lerp (.5f, 1.45f, carSpeed / 3f * .075f); 
		}
		else if (carSpeed > 25f && carSpeed < 40f)  
		{ //fourth gear
			tempEngineAudioPitch = Mathf.Lerp (.5f, 1.3f, carSpeed / 4f * .075f);   
		}
		else if (carSpeed > 40f && carSpeed < 80f)   
		{ //fifth gear
			tempEngineAudioPitch = Mathf.Lerp (.5f, 1.2f, carSpeed / 4f * .075f);     
		}
	}
}


