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

    public bool isEnemyWeapon = false;

    internal float timeToShoot = 0;
    internal float currentAngle = 0;
    internal bool equipped = false;
    internal bool pickup = false;

    private WanderChaseAI ai;
    private Transform parent;

    public virtual void Start()
    {
        currentAngle = 0; // I just want to see what this angle is.  The user shouldn't be able to change it from the editor
        timeToShoot = 0;
        parent = transform.parent;
        if(!pickup) transform.localPosition = new Vector3(0.7f, 1.45f, 1.5f);
        //if (isEnemyWeapon) transform.localPosition = new Vector3(1.06f, 1.61f, 1.91f);
        transform.localRotation = Quaternion.Euler(90, 0, 0);
    }

    public virtual void SetPickup(bool p)
    {
        pickup = p;
    }

    public virtual void Equip()
    {
        equipped = true;
    }
	
	// Update is called once per frame
	public virtual void Update ()
    {
        if (!equipped && !isEnemyWeapon) return;
        if(ai == null && isEnemyWeapon) ai = parent.GetComponent<WanderChaseAI>();
        timeToShoot -= Time.deltaTime;
        bool tests;
        if (!isEnemyWeapon) tests = (Input.GetButton("A") || Input.GetButtonDown("A")) && timeToShoot < 0;
        else tests = ai.Shoot() && timeToShoot < 0;

        // If we have pressed A or are holding A and our cooldown is up, we can shoot.
        if (tests)
        {
            // Reset the cooldown
            timeToShoot = cooldown;

            GameObject spawnedBullet = Instantiate(bullet, transform.position, transform.rotation) as GameObject;

            // We want the bullet to have it's own collider and we don't want it to be a trigger, so ignore all colliders on the player object so the bullet can travel as it should and not disrupt the player.
            Collider[] pcolliders = transform.root.GetComponents<Collider>();
            foreach (Collider c in pcolliders)
            {
                Physics.IgnoreCollision(spawnedBullet.GetComponent<Collider>(), c);
            }

            // Give the bullet some velocity (described by bullet speed on the bullet prefab
            spawnedBullet.GetComponent<Rigidbody>().velocity = transform.TransformDirection(Vector3.up * spawnedBullet.GetComponent<Bullet>().moveSpeed) + transform.parent.GetComponent<Rigidbody>().velocity;
            spawnedBullet.GetComponent<Bullet>().enemyBullet = isEnemyWeapon;
        }
        /*
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
        */
    }
}
