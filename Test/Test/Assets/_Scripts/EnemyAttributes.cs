using UnityEngine;
using System.Collections;

public class EnemyAttributes : MonoBehaviour
{
    public float enemyHealth = 150;
    public GameObject drop;

    private float maxHealth;
    private float percLeft;

    public int[] materialsToAdjustByIndex;
    private Material[] materials;
    private Color[] originalColors;
    private Color newColor;

    private float lastPercLeft;

    // This script just changes the color of the enemy as it's health is diminished, will change later or use to update a health bar.

    // Use this for initialization
    void Start ()
    {
        maxHealth = enemyHealth;
        percLeft = enemyHealth / maxHealth;
        newColor = Color.white;
        materials = gameObject.GetComponent<MeshRenderer>().materials;
        originalColors = new Color[materials.Length];

        for (int i = 0; i < materials.Length; i++)
        {
            originalColors[i] = materials[i].color;
        }
    }

    public void IncreaseHealth(double newHealth)
    {
        maxHealth = (float)newHealth;
        enemyHealth = (float)newHealth;
    }

	// Update is called once per frame
	void Update ()
    {
        percLeft = enemyHealth / maxHealth;
        if (lastPercLeft != percLeft)
        {
            foreach (int i in materialsToAdjustByIndex)
            {
                materials[i].color = Color.Lerp(newColor, originalColors[i], percLeft);
            }
        }
        lastPercLeft = percLeft;

        // Enemy is dead.
        if (enemyHealth <= 0)
        {
            if(drop != null)
            {
                drop.transform.position = transform.position;
                GameObject newDrop = Instantiate(drop, transform.position, transform.rotation) as GameObject;
                newDrop.tag = "Pickup";
                newDrop.transform.position = transform.position;
                newDrop.GetComponent<Weapon>().SetPickup(true);
            }
            Destroy(gameObject);
        }
	}
}
