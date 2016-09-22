using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour
{
    public float moveSpeed = 5;
    public float lifeSpan = 5;
    public int damage = 20 ;
    public bool enemyBullet = false;

	// Use this for initialization
	void Start ()
    {
	    
	}
	
	// Update is called once per frame
	void Update ()
    {
        // This update is called as soon as the bullet is created.  

        lifeSpan -= Time.deltaTime;

        // The bullet is long gone, destroy it.
        if (lifeSpan < 0)
        {
            Destroy(this.gameObject);
        }
	}

    void OnCollisionEnter(Collision collision)
    {
        //print("In Collision.");

        // If we collided with the enemy, they have the enemy attributes script, so subtract the damage of this bullet from their health.
        if (collision.gameObject.CompareTag("Enemy") && !enemyBullet)
        {
            //print("Collided with ENEMY");
            collision.gameObject.GetComponent<EnemyAttributes>().enemyHealth -= damage;
        }

        if (collision.gameObject.CompareTag("Player") && enemyBullet)
        {
            collision.gameObject.GetComponent<PlayerAttributes>().health -= damage;
        }

        // If we collided with anything, destroy the bullet.
        Destroy(gameObject);
    }
}
