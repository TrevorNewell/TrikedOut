using UnityEngine;
//using XboxCtrlrInput;
using System.Collections.Generic;

public class InputHandler : MonoBehaviour
{
    /*
     * THis class is required to be a component of all player objects. 
     * It will send messages to the player's move class, which will move the player
     * The Move class will not move the player until the Update function is called, which the Player will do
     **/
    private GameObject weapon;
    private NewMove move;
    private string prefix;
    private bool useController = true;
    private Dictionary<string, KeyCode> kbc;
    private Dictionary<string, string> ucv;
    private float currentTime;
    private float delay = 0.2f;

    // Use this for initialization
    void Start()
    {
        move = gameObject.GetComponent<NewMove>();
        prefix = name;//player.prefix;
        weapon = GameObject.Find(prefix + "_Weapon");
        currentTime = 0f;
    }

    public void ReceiveDefinitions(bool uc, Dictionary<string, KeyCode> kb, Dictionary<string, string> uv)
    {
        useController = uc;
        ucv = uv;
    }

    // Update is called once per frame
    void Update()
    {
        bool leftPedal;
        bool rightPedal;
        float cameraFactor;
        bool fire;
        bool ceaseFire;
        bool activateUlti;

        leftPedal = (Input.GetAxis(prefix + "_LeftTrigger") == 1) ? true : false;
        rightPedal = (Input.GetAxis(prefix + "_RightTrigger") == 1) ? true : false;
        cameraFactor = Input.GetAxis(prefix + "_RightStickX");
        fire = Input.GetButtonDown(prefix + "_A");
        ceaseFire = Input.GetButtonUp(prefix + "_A");
        activateUlti = Input.GetButtonDown(prefix + "_Y");

        move.SetFactors(leftPedal, rightPedal);
        if (fire) FireWeapon();
        else if (ceaseFire) CeaseFire();
        //if (activateUlti) player.ActivateUlti();
    }

    void FireWeapon()
    {
        weapon.GetComponent<Item>().Activate();

        // Not implemented yet
        //SoundManager.instance.PlayShootSound();
    }

    void CeaseFire()
    {
        weapon.GetComponent<Item>().Deactivate();
    }
}