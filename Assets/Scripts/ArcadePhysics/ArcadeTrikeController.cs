// Built using the tutorial at http://www.doofah.com/tutorials/unity/bouncy-vehicle-tutorial/ Credit to: Martin Horn
// Expanded upon by: Trevor Newell
using UnityEngine;
using System.Collections;

public class ArcadeTrikeController : MonoBehaviour
{
    Rigidbody body;
    public GameObject handleBars;
    public GameObject handlePivot;
    public Vector3 originalOrientation;
    public GameObject frontWheel;
    public float frontRotationRate = 1.06f; // May vary based on individual trike 1.06 is a good value for this
    public GameObject backLeftWheel;
    public GameObject backRightWheel;
    public float backRotationRate = 2.12f; // May vary based on individual trike 2.12 is a good value for this

    public float currentAngle;
    public Vector3 localVelocity;

    [Range(10, 90)] public int maxTurnAngle;
    public float deadZone = 0.1f; // Filters out small movements so the controller isn't as sensitive
    public float groundedDrag = 3f;  // Changes RigidBody drag factor depending on whether the buggy is grounded or in the air
    public float maxVelocity = 50;
    public float hoverForce = 1000;
    public float gravityForce = 1000f;
    public float hoverHeight = 1.5f;
    public GameObject[] hoverPoints;
    public float CurrentSpeed { get { return body.velocity.magnitude; } }
    public float speed;
    public float forwardAcceleration = 8000f;
    public float reverseAcceleration = 4000f;
    public float slowFactor = 100f;
    float thrust = 0f;

    private bool isReverse = false;

    public float turnStrength = 1000f;
    float turnValue = 0f;

    public bool emitDust = true;
    public ParticleSystem[] dustTrails = new ParticleSystem[2];

    int layerMask;

    void Start()
    {
        originalOrientation = handleBars.transform.localEulerAngles;

        body = gameObject.GetComponentInParent<Rigidbody>();
        body.centerOfMass = Vector3.down;

        layerMask = 1 << LayerMask.NameToLayer("Vehicle");
        layerMask = ~layerMask;
    }

    // Uncomment this to see a visual indication of the raycast hit points in the editor window
    //  void OnDrawGizmos()
    //  {
    //
    //    RaycastHit hit;
    //    for (int i = 0; i < hoverPoints.Length; i++)
    //    {
    //      var hoverPoint = hoverPoints [i];
    //      if (Physics.Raycast(hoverPoint.transform.position, 
    //                          -Vector3.up, out hit,
    //                          hoverHeight, 
    //                          layerMask))
    //      {
    //        Gizmos.color = Color.blue;
    //        Gizmos.DrawLine(hoverPoint.transform.position, hit.point);
    //        Gizmos.DrawSphere(hit.point, 0.5f);
    //      } else
    //      {
    //        Gizmos.color = Color.red;
    //        Gizmos.DrawLine(hoverPoint.transform.position, 
    //                       hoverPoint.transform.position - Vector3.up * hoverHeight);
    //      }
    //    }
    //  }

    public void Move(float turnAxis, float acceleration, float drifting)
    {
        // Get thrust input
        //thrust = 0.0f;
        //acceleration = Input.GetAxis("Vertical");
        if (acceleration > deadZone)
        {
            thrust = acceleration * forwardAcceleration;
            isReverse = false;
        }
        else if (acceleration < -deadZone)
        {
            thrust = acceleration * reverseAcceleration;
            isReverse = true;
        }
        else if (thrust != 0)
        {
            if (isReverse) thrust += slowFactor;
            else thrust -= slowFactor;
        }

        // Get turning input
        turnValue = 0.0f;
        //turnAxis = Input.GetAxis("Horizontal");
        if (Mathf.Abs(turnAxis) > deadZone)
            turnValue = turnAxis;

        // TODO: Add drifting logic
    }

    void Update()
    {
        /*
        // Get thrust input
        thrust = 0.0f;
        float acceleration = Input.GetAxis("Vertical");
        if (acceleration > deadZone)
            thrust = acceleration * forwardAcceleration;
        else if (acceleration < -deadZone)
            thrust = acceleration * reverseAcceleration;

        // Get turning input
        turnValue = 0.0f;
        float turnAxis = Input.GetAxis("Horizontal");
        if (Mathf.Abs(turnAxis) > deadZone)
            turnValue = turnAxis;

        Debug.Log(acceleration + " " + turnAxis);
        */
    }

    void FixedUpdate()
    {
        speed = body.velocity.magnitude;
        //  Do hover/bounce force
        RaycastHit hit;
        bool grounded = false;
        for (int i = 0; i < hoverPoints.Length; i++)
        {
            var hoverPoint = hoverPoints[i];
            if (Physics.Raycast(hoverPoint.transform.position, -Vector3.up, out hit, hoverHeight, layerMask))
            {
                body.AddForceAtPosition(Vector3.up * hoverForce * (1.0f - (hit.distance / hoverHeight)), hoverPoint.transform.position);
                grounded = true;
            }
            else
            {
                // Self levelling - returns the vehicle to horizontal when not grounded and simulates gravity
                if (transform.position.y > hoverPoint.transform.position.y)
                {
                    body.AddForceAtPosition(hoverPoint.transform.up * gravityForce, hoverPoint.transform.position);
                }
                else
                {
                    body.AddForceAtPosition(hoverPoint.transform.up * -gravityForce, hoverPoint.transform.position);
                }
            }
        }

        var emissionRate = 0;
        if (grounded)
        {
            body.drag = groundedDrag;
            emissionRate = 10;
        }
        else
        {
            body.drag = 0.1f;
            thrust /= 100f;
            turnValue /= 100f;
        }

        if (emitDust)
        {
            for (int i = 0; i < dustTrails.Length; i++)
            {
                var emission = dustTrails[i].emission;
                emission.rate = new ParticleSystem.MinMaxCurve(emissionRate);
            }
        }

        localVelocity = transform.InverseTransformDirection(body.velocity);  // This tells us which if we're moving forward or backwards.  We can use this to determine how to rotate the trike and handlebars when going backwards.

        // Rotate front and back wheels based on velocity
        frontWheel.transform.Rotate(new Vector3(frontRotationRate * localVelocity.z, 0, 0));
        backLeftWheel.transform.Rotate(new Vector3(backRotationRate * localVelocity.z, 0, 0));
        backRightWheel.transform.Rotate(new Vector3(backRotationRate * localVelocity.z, 0, 0));

        // Handle Forward and Reverse forces
        if (Mathf.Abs(thrust) > 0)
            body.AddForce(transform.forward * thrust);

        // Handle Turn forces

        if (isReverse)
        {
            turnValue *= -1;
        }

        // Turning Right
        if (turnValue > 0)
        {
            body.AddRelativeTorque(Vector3.up * turnValue * turnStrength);

            // Going Backwards
            if (isReverse)
            {
                handleBars.transform.localRotation = Quaternion.Euler(new Vector3(originalOrientation.x, originalOrientation.y - (turnValue * maxTurnAngle), handlePivot.transform.localRotation.eulerAngles.z));
            }
            // Going forward
            else
            {
                handleBars.transform.localRotation = Quaternion.Euler(new Vector3(originalOrientation.x, originalOrientation.y + (turnValue * maxTurnAngle), handlePivot.transform.localRotation.eulerAngles.z));
            }

            //handleBars.transform.localRotation = Quaternion.Euler(new Vector3(originalOrientation.x, originalOrientation.y + (turnValue * maxTurnAngle), handlePivot.transform.localRotation.eulerAngles.z));

            //handleBars.transform.RotateAround(handlePivot.transform.position, handlePivot.transform.localToWorldMatrix.MultiplyVector(transform.up), turnValue * maxTurnAngle);
        }
        // Turning Left
        else if (turnValue < 0)
        {
            body.AddRelativeTorque(Vector3.up * turnValue * turnStrength);

            // Going Backwards
            if (isReverse)
            {
                handleBars.transform.localRotation = Quaternion.Euler(new Vector3(originalOrientation.x, originalOrientation.y - (turnValue * maxTurnAngle), handlePivot.transform.localRotation.eulerAngles.z));
            }
            // Going forward
            else
            {
                handleBars.transform.localRotation = Quaternion.Euler(new Vector3(originalOrientation.x, originalOrientation.y + (turnValue * maxTurnAngle), handlePivot.transform.localRotation.eulerAngles.z));
            }

            //handleBars.transform.localRotation = Quaternion.Euler(new Vector3(originalOrientation.x, originalOrientation.y + (turnValue * maxTurnAngle), handlePivot.transform.localRotation.eulerAngles.z));

            //handleBars.transform.RotateAround(handlePivot.transform.position, handlePivot.transform.localToWorldMatrix.MultiplyVector(transform.up), turnValue * maxTurnAngle);

            
            //Debug.Log(handleBars.transform.localEulerAngles.y);
        }

        // Limit max velocity
        if (body.velocity.sqrMagnitude > (body.velocity.normalized * maxVelocity).sqrMagnitude)
        {
            body.velocity = body.velocity.normalized * maxVelocity;
        }
    }
}
