using UnityEngine;
using System.Collections;

public class Bat : Weapon
{
    internal Vector3[] locP;
    internal Vector3[] locR;
    internal int locCounter;
    internal bool backswing;
    internal bool swinging;

	// Use this for initialization
	public override void Start ()
    {
        damage = 100;
        cooldown = 10;
        coneSizeInAngles = 60;
        aimSpeed = 20;
        currentAngle = -30;

        timeToShoot = 0;

        locP = new Vector3[3];
        locP[0] = new Vector3(1.25f, 1.841f, 1.91f);
        locP[1] = new Vector3(0.0f, 1.841f, 2.45f);
        locP[2] = new Vector3(-1.25f, 1.841f, 1.91f);

        locR = new Vector3[3];
        locR[0] = new Vector3(90, 0, -60);
        locR[1] = new Vector3(90, 0, 0);
        locR[2] = new Vector3(90, 0, 60);

        locCounter = 1;

        backswing = false;
        swinging = false;

        transform.localPosition = locP[0];
        transform.localRotation = Quaternion.Euler(locR[0]);
    }
	
	// Update is called once per frame
	public override void Update ()
    {
        // If we have pressed A or are holding A and our cooldown is up, we can shoot.
        if (Input.GetButtonUp("A")) swinging = false;
        if ((Input.GetButtonDown("A") || Input.GetButton("A")))
        {
            swinging = true;
            transform.localPosition = Vector3.Lerp(transform.localPosition, locP[locCounter], aimSpeed * Time.deltaTime);
            transform.localRotation = Quaternion.Lerp(transform.localRotation, Quaternion.Euler(locR[locCounter]), aimSpeed * Time.deltaTime);
            if (Mathf.Abs(transform.localPosition.x - locP[locCounter].x) < 0.1 && Mathf.Abs(transform.localPosition.z - locP[locCounter].z) < 0.1)
            {
                if (!backswing) locCounter++;
                else locCounter--;
                if (locCounter == 3)
                {
                    backswing = true;
                    locCounter = 2;
                }
                if(locCounter == -1)
                {
                    backswing = false;
                    locCounter = 0;
                }
            }
        }
    }

    void OnTriggerStay(Collider obj)
    {
        // If we collided with the enemy, they have the enemy attributes script, so subtract the damage of this bullet from their health.
        if (obj.transform.tag == "Enemy")
        {
            float dx = Mathf.Abs(transform.parent.transform.position.x - obj.transform.position.x);
            float dy = Mathf.Abs(transform.parent.transform.position.y - obj.transform.position.y);
            float dz = Mathf.Abs(transform.parent.transform.position.z - obj.transform.position.z);

            float rad = 5;

            if(dx < rad && dy < rad && dz < rad && swinging) obj.gameObject.GetComponent<EnemyAttributes>().enemyHealth -= damage * Time.deltaTime;
        }
    }
}
