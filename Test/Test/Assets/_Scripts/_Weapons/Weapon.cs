using UnityEngine;
using System.Collections;

public class Weapon : MonoBehaviour
{
    public int damage = 20;
    public float cooldown = 5;
    public float coneSizeInAngles = 60;
    public int aimSpeed = 2;
    public GameObject bullet;
    //public Vector3 spawnLocation;  Now uses the pivot of the aimcone as it's spawn point.

    public GameObject aimCone;
    public GameObject aimArrow;

    internal float timeToShoot = 0;
    internal float currentAngle = 0;

    public virtual void Start ()
    {
        currentAngle = 0; // I just want to see what this angle is.  The user shouldn't be able to change it from the editor
        timeToShoot = 0;
        transform.localPosition = new Vector3(1.06f, 1.841f, 1.91f);
        transform.localRotation = Quaternion.Euler(90, 0, 0);
    }
	
	// Update is called once per frame
	public virtual void Update ()
    {
        timeToShoot -= Time.deltaTime;

        // If we have pressed A or are holding A and our cooldown is up, we can shoot.
        if ((Input.GetButtonDown("A") || Input.GetButton("A")) && timeToShoot < 0)
        {
            // Reset the cooldown
            timeToShoot = cooldown;

            GameObject spawnedBullet = Instantiate(bullet, transform.position, transform.rotation) as GameObject;

            // We want the bullet to have it's own collider and we don't want it to be a trigger, so ignore all colliders on the player object so the bullet can travel as it should and not disrupt the player.
            Collider[] colliders = gameObject.GetComponents<Collider>();
            Collider[] pcolliders = transform.parent.gameObject.GetComponents<Collider>();
            foreach (Collider c in colliders)
            {
                Physics.IgnoreCollision(spawnedBullet.GetComponent<Collider>(), c);
            }

            // Give the bullet some velocity (described by bullet speed on the bullet prefab
            spawnedBullet.GetComponent<Rigidbody>().velocity = transform.TransformDirection(Vector3.up * spawnedBullet.GetComponent<Bullet>().moveSpeed) + transform.parent.GetComponent<Rigidbody>().velocity;
        }

        float x = Input.GetAxis("RightJoystickX");

        if (x != 0)
        {
            if (x < 0 && currentAngle > (coneSizeInAngles / 2) * -1)
            {
                transform.RotateAround(transform.position, Vector3.up, -aimSpeed);
                currentAngle -= aimSpeed;
            }
            else if (x > 0 && currentAngle < (coneSizeInAngles / 2))
            {
                transform.RotateAround(transform.position, Vector3.up, aimSpeed);
                currentAngle += aimSpeed;
            }
        }
    }
}
