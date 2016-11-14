using System;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

namespace UnityStandardAssets.Vehicles.Car
{
    public class CarUserControl : MonoBehaviour
    {
        public CarController m_Car; // the car controller we want to use

        private void FixedUpdate()
        {
            // pass the input to the car!
            float h = Input.GetAxis("Horizontal");
            float v = Input.GetAxis("Vertical");

            //float handbrake = Input.GetAxis("P1_RightJoystickX");
            //print(handbrake);
            //m_Car.Move(h, v, v, handbrake);
            m_Car.Move(h, v, v, 0);
        }
    }
}
