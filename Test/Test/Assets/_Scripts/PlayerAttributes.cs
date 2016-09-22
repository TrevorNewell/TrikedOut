using UnityEngine;
using System.Collections;

public class PlayerAttributes : MonoBehaviour
{
    public float health = 100;

    private Color color;
    private float maxHealth;
    private float percLeft;

    // This script just changes the color of the enemy as it's health is diminished, will change later or use to update a health bar.

    // Use this for initialization
    void Start()
    {
        transform.tag = "Player";
        maxHealth = health;
        color = gameObject.GetComponent<MeshRenderer>().material.color;

        //print("R: " + color.r + " G: " + color.g + " B: " + color.b + " A: " + color.a + " t: " + (enemyHealth / maxHealth) + " Max: " + maxHealth + " Cur: " + enemyHealth);

        percLeft = health / maxHealth;

        color = new Color(color.r, 1 - percLeft, 1 - percLeft, color.a);

        gameObject.GetComponent<MeshRenderer>().material.color = color;
    }

    void OnCollisionEnter(Collision collision)
    {

    }

    public void IncreaseHealth(double newHealth)
    {
        maxHealth = (float)newHealth;
        health = (float)newHealth;
    }

    // Update is called once per frame
    void Update()
    {
        //print(enemyHealth);percLeft = enemyHealth / maxHealth;
        percLeft = health / maxHealth;

        color = new Color(color.r, 1 - percLeft, 1 - percLeft, color.a);

        //print("R: " + color.r + " G: " + color.g + " B: " + color.b + " A: " + color.a + " t: " + (enemyHealth/maxHealth) + " Max: " + maxHealth + " Cur: " + enemyHealth);

        gameObject.GetComponent<MeshRenderer>().material.color = color;

        // Enemy is dead.
        if (health <= 0)
        {
            gameObject.SetActive(false);
        }
    }
}
