using UnityEngine;
using System.Collections;

public class WanderChaseAI : MonoBehaviour
{
    public Transform goal;
    private NavMeshAgent agent;
    private Vector3 targetAngle;
    private Vector2 center;
    private Vector3[] destinations;
    private int wanderTracker;
    private float retreating;
    public int wanderRadius = 2;
    public float tolerance = 1.0f;
    public float retreatTime = 6.0f;
    public bool wander = true;
    public bool chase = true;
    public bool shoot = true;

    private static int WANDER_STATE = 0;
    private static int CHASE_STATE = 1;
    private static int FLEE_STATE = 2;
    private int alertLevel;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        agent.updatePosition = false;
        alertLevel = WANDER_STATE;
        wanderTracker = 0;
        retreating = -1;
        GetCircle();
    }

    public bool Shoot()
    {
        return alertLevel == 1 && shoot && retreating < 0;
    }

    void GetCircle()
    {
        center = new Vector2(transform.position.x, transform.position.z);
        destinations = new Vector3[4];
        destinations[0] = new Vector3(center.x + wanderRadius, 0, center.y);
        destinations[1] = new Vector3(center.x, 0, center.y + wanderRadius);
        destinations[2] = new Vector3(center.x - wanderRadius, 0, center.y);
        destinations[3] = new Vector3(center.x, 0, center.y - wanderRadius);
        if (wander) agent.destination = destinations[0];
        else agent.destination = new Vector3(center.x, 0, center.y);
        wanderTracker = 0;
    }

    void Update()
    {
        if (wander && alertLevel == WANDER_STATE && Mathf.Abs(transform.position.x - destinations[wanderTracker].x) < tolerance && Mathf.Abs(transform.position.z - destinations[wanderTracker].z) < tolerance)
        {
            wanderTracker++;
            if (wanderTracker == 4) wanderTracker = 0;
            agent.destination = destinations[wanderTracker];
        }
        if (alertLevel == CHASE_STATE)
        {
            if (retreating < 0)
            {
                if (chase) agent.destination = goal.position;
                transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.LookRotation(goal.position - transform.position), 10 * Time.deltaTime);
            }
        }
        if (retreating > 0)
        {
            retreating -= 1 * Time.deltaTime;
        }
        transform.position = agent.nextPosition;
    }

    void OnTriggerExit(Collider other)
    {
        if (other.transform.tag == "Player")
        {
            alertLevel--;
            if (alertLevel == WANDER_STATE)
            {
                retreating = -1;
                GetCircle();
            }
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
                retreating = retreatTime;
                agent.destination = destinations[0];
                agent.velocity = agent.velocity.normalized;
            }
        }
    }
}