using UnityEngine;
using System.Collections;

public class Bullet : MonoBehaviour
{
    public float moveSpeed = 5;
    public float lifeSpan = 5;
    public int damage = 20 ;
    public bool enemyBullet = false;
    public float slowFactor = 0.75f;
    private GameObject hitObject;
    private bool collided = false;

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
            if(hitObject != null)
            {
                if(hitObject.transform.tag == "Enemy")
                {
                    hitObject.GetComponent<NavMeshAgent>().velocity = hitObject.GetComponent<NavMeshAgent>().velocity / slowFactor;
                }
                if(hitObject.transform.tag == "Player")
                {
                    hitObject.GetComponent<PlayerMove>().maxMoveSpeed /= slowFactor;
                }
            }
            Destroy(this.gameObject);
        }
	}

    void OnCollisionEnter(Collision collision)
    {
        //print("In Collision.");
        if (collided) return;

        // If we collided with the enemy, they have the enemy attributes script, so subtract the damage of this bullet from their health.
        if (collision.gameObject.CompareTag("Enemy") && !enemyBullet)
        {
            //print("Collided with ENEMY");
            collision.gameObject.GetComponent<EnemyAttributes>().enemyHealth -= damage;
            hitObject = collision.gameObject;
            hitObject.GetComponent<NavMeshAgent>().velocity = hitObject.GetComponent<NavMeshAgent>().velocity * slowFactor;
            GetComponent<Rigidbody>().velocity = Vector3.zero;
            GetComponent<MeshRenderer>().enabled = false;
            collided = true;
        }

        else if (collision.gameObject.CompareTag("Player") && enemyBullet)
        {
            collision.gameObject.GetComponent<PlayerAttributes>().health -= damage;
            hitObject = collision.gameObject;
            hitObject.GetComponent<PlayerMove>().maxMoveSpeed *= slowFactor;
            GetComponent<Rigidbody>().velocity = Vector3.zero;
            GetComponent<MeshRenderer>().enabled = false;
            collided = true;
        }
        else
        {
            Destroy(gameObject);
        }
        // If we collided with anything, destroy the bullet.
        //Destroy(gameObject);
    }
}
