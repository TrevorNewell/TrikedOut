using UnityEngine;
using System.Collections;

public class DemoController : MonoBehaviour {  

	
	public void LoadLightVehicle () { 

		Application.LoadLevel ("Light_Vehicle_Scene");
	}

	public void LoadMediumVehicle () {

		Application.LoadLevel ("Medium_Vehicle_Scene"); 
	}

	public void LoadHeavyVehicle () {

		Application.LoadLevel ("Heavy_Vehicle_Scene");
	}

	public void LoadMonsterTruckVehicle () { 

		Application.LoadLevel ("Monster_Truck_Scene"); 
	}

	public void LoadAirportArea () { 
		
		Application.LoadLevel ("Light_Vehicle_Scene");  
	}

	public void LoadStuntArea () {  
		
		Application.LoadLevel ("Demo_Scene"); 
	}
}



