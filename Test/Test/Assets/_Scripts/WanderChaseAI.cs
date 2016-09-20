using UnityEngine;
using System.Collections;

public class WanderChaseAI : MonoBehaviour
{
    public Transform goal;
    private NavMeshAgent agent;
    private Vector3 targetAngle;
    private bool hitRotating;
    private Vector2 center;
    private Vector3[] destinations;
    private int wanderTracker;
    public int wanderRadius = 5;
    public float tolerance = 1.0f;

    private static int WANDER_STATE = 0;
    private static int CHASE_STATE = 1;
    private static int FLEE_STATE = 2;
    private int alertLevel;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        hitRotating = false;
        agent.updatePosition = false;
        alertLevel = WANDER_STATE;
        wanderTracker = 0;
        GetCircle();
    }

    void GetCircle()
    {
        center = new Vector2(transform.position.x, transform.position.z);
        destinations = new Vector3[4];
        destinations[0] = new Vector3(center.x + wanderRadius, 0, center.y);
        destinations[1] = new Vector3(center.x, 0, center.y + wanderRadius);
        destinations[2] = new Vector3(center.x - wanderRadius, 0, center.y);
        destinations[3] = new Vector3(center.x, 0, center.y - wanderRadius);
        agent.destination = destinations[0];
        wanderTracker = 0;
    }

    void Update()
    {
        if (alertLevel == WANDER_STATE && Mathf.Abs(transform.position.x - destinations[wanderTracker].x) < tolerance && Mathf.Abs(transform.position.z - destinations[wanderTracker].z) < tolerance)
        {
            wanderTracker++;
            if (wanderTracker == 4) wanderTracker = 0;
            agent.destination = destinations[wanderTracker];
        }
        if (alertLevel == CHASE_STATE) agent.destination = goal.position;
        transform.position = agent.nextPosition;
        if (hitRotating)
        {
            transform.eulerAngles = Vector3.Lerp(transform.eulerAngles, targetAngle, 4f * Time.deltaTime);
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.transform.tag == "Player")
        {
            alertLevel--;
            hitRotating = false;
            if (alertLevel == WANDER_STATE) GetCircle();
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.transform.tag == "Player")
        {
            goal = other.transform;
            alertLevel++;
            if (alertLevel == FLEE_STATE)
            {
                targetAngle = transform.eulerAngles + 45f * Vector3.up;
                agent.velocity = Quaternion.Euler(0, 45, 0) * Vector3.Normalize(agent.velocity) * agent.speed;
                hitRotating = true;
            }
        }
    }
}