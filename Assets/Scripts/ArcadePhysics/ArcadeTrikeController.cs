// Built using the tutorial at http://www.doofah.com/tutorials/unity/bouncy-vehicle-tutorial/ Credit to: Martin Horn
// Expanded upon by: Trevor Newell
using UnityEngine;
using System.Collections;
using System.Timers;
using UnityEngine.UI;

public class ArcadeTrikeController : MonoBehaviour
{
    [Header("Boolean Variables")]
    public bool canTurnWhenStopped = false;
    public bool emitDust = true; // Should we emit dust if our wheel are touching the ground?  Yes, but we need some good particle effects!
    public bool slowed = false;

    Rigidbody body;

    [Header("Variables to Setup the Trike (Doesn't effect performance of Trike)")]
    public GameObject handleBars;
    public GameObject handlePivot;
    public Vector3 originalOrientation;
    public GameObject frontWheel;
    public float frontRotationRate = 1.06f; // May vary based on individual trike 1.06 is a good value for this
    public GameObject backLeftWheel;
    public GameObject backRightWheel;
    public float backRotationRate = 2.12f; // May vary based on individual trike 2.12 is a good value for this
    [Range(10, 90)] public int maxTurnAngle;
    public ParticleSystem[] dustTrails = new ParticleSystem[2];
    public GameObject[] hoverPoints;

    [Header("Performance Modifiers")]
    public float timeTilDecay = 0.5f;
    public float pedalTimeMaxSpeed = 2f;
    public float deadZone = 0.1f; // Filters out small movements so the controller isn't as sensitive
    public float groundedDrag = 3f;  // Changes RigidBody drag factor depending on whether the trike is grounded or in the air.  Should leave at 3
    public float maxVelocity = 50;
    public float hoverForce = 1000;
    public float gravityForce = 1000f;
    public float hoverHeight = 1.5f;

    public float forwardAcceleration = 8000f;
    public float reverseAcceleration = 4000f;
    public float slowFactor = 100f;
    private float previousSlowFactor = 100f;

    public float turnStrength = 1000f;
    float turnValue = 0f;

    [Header("Visible to Debug")]
    public float thrust = 0f;
    public float currentAngle;
    public Vector3 localVelocity;
    public float actualSpeed;
    public int maxPedals;
    public int currentPedals;
    public bool grounded = false; // Are we on the ground?
    public bool canTurn = true; // Can we turn our trike?  No when stopped
    public float CurrentSpeed { get { return body.velocity.magnitude; } }
    public float speed;
    public float temp;
   
    private bool isReverse = false;  // Are we going forward or backward?
    public GameObject playerHUD;
    private float smoothlyAnimateSpeedMeter = 0;
    int layerMask;

    public void SetRigidBodyAndPedals(int maxNumPedals)
    {
        body = gameObject.GetComponentInParent<Rigidbody>();
        body.centerOfMass = Vector3.down;
        maxPedals = maxNumPedals;
    }

    void Start()
    {
        playerHUD = GameObject.Find("HUD" + GetComponentInParent<Player>().playerNumber);

        if(handleBars != null) originalOrientation = handleBars.transform.localEulerAngles;

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

    public void Pop(float slow)
    {
        body.AddForce(new Vector3(0f, 100000f, 0f));
    }

    public float GetPercentOfMaxSpeed()
    {
        return thrust / forwardAcceleration;
        //return currentPedals / maxPedals;
    }

    public void Move(float turnAxis, float acceleration, float drifting, bool increasePedalCount)
    {
        bool pedalCountChanged = false;
        if (increasePedalCount)
        {
            if (currentPedals < maxPedals)
            {
                currentPedals++;
                pedalCountChanged = true;
            }

            temp = 0;
        }
        else
        {
            temp += Time.deltaTime;
            if (currentPedals == maxPedals)
            {
                if (temp >= pedalTimeMaxSpeed)
                {
                    currentPedals--;
                    pedalCountChanged = true;
                    temp = 0;
                }
            }
            else if (temp >= timeTilDecay)
            {
                if (currentPedals - 1 != -1)
                {
                    currentPedals--;
                    pedalCountChanged = true;
                }
                temp = 0;
            }
        }

        smoothlyAnimateSpeedMeter += Time.deltaTime;

        //if (smoothlyAnimateSpeedMeter > 1.0f) smoothlyAnimateSpeedMeter = 1.0f;

        if (pedalCountChanged)
        {

        }
        else
        {
        }

        //playerHUD.GetComponentInChildren<Slider>().value = Mathf.Lerp(playerHUD.GetComponentInChildren<Slider>().value, currentPedals / maxPedals, smoothlyAnimateSpeedMeter);
        //playerHUD.GetComponentInChildren<Slider>().value = thrust / forwardAcceleration;
        GameObject.Find("SpeedMeter" + GetComponentInParent<Player>().playerNumber).GetComponent<Slider>().value = thrust / forwardAcceleration;

        // Get thrust input
        if (acceleration > deadZone)
        {
            thrust = Mathf.Pow(currentPedals, 2) / Mathf.Pow(maxPedals, 2) * forwardAcceleration;
            //thrust = acceleration * forwardAcceleration;
            isReverse = false;
            canTurn = true;
        }
        else if (acceleration < -deadZone)
        {
            thrust = acceleration * reverseAcceleration;
            isReverse = true;
            canTurn = true;

            currentPedals = 0;
        }
        else if (thrust != 0)
        {
            if (isReverse)
            {
                thrust += slowFactor;

                if (thrust > 0)
                {
                    isReverse = false;
                    thrust = 0;
                }
            }
            else
            {
                //currentPedals = (int)(maxPedals * Mathf.Pow(thrust / forwardAcceleration, (1.0f / 2.0f)));
                if(currentPedals != maxPedals || slowed) thrust -= slowFactor;
                //currentPedals = (int) (maxPedals * Mathf.Pow(thrust / forwardAcceleration, (1.0f / 2.0f)));

                if (thrust < 0)
                {
                    isReverse = true;
                    thrust = 0;
                }
            }

            canTurn = true;
        }
        else
        {
            isReverse = false;
            canTurn = false;
        }

        // Get turning input
        turnValue = 0.0f;

        if (Mathf.Abs(turnAxis) > deadZone)
            turnValue = turnAxis;

        // TODO: Add drifting logic
    }

    void FixedUpdate()
    {
        speed = body.velocity.magnitude;
        //  Do hover/bounce force
        RaycastHit hit;

        bool anyGrounded = false;

        for (int i = 0; i < hoverPoints.Length; i++)
        {
            var hoverPoint = hoverPoints[i];
            if (Physics.Raycast(hoverPoint.transform.position, -Vector3.up, out hit, hoverHeight, layerMask))
            {
                anyGrounded = true;
                grounded = true;
                break;
            }
        }

        if (anyGrounded == false) grounded = false;
        for (int i = 0; i < hoverPoints.Length; i++)
        {
            var hoverPoint = hoverPoints[i];
            if (Physics.Raycast(hoverPoint.transform.position, -Vector3.up, out hit, hoverHeight, layerMask))
            {
                body.AddForceAtPosition(Vector3.up * hoverForce * (1.0f - (hit.distance / hoverHeight)), hoverPoint.transform.position);
                //grounded = true;
            }
            else// if (!anyGrounded)
            {
                //grounded = false;
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
            thrust /= 1000f;
            turnValue /= 1f;
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
        actualSpeed = localVelocity.z;

        //localVelocity.sqrMagnitude / (body.velocity.normalized * maxVelocity).sqrMagnitude;
        //if (actualSpeed > 0 )
        //{
        //    //if (body.velocity.sqrMagnitude > (body.velocity.normalized * maxVelocity).sqrMagnitude)
        //    int temp = Mathf.CeilToInt(maxPedals * Mathf.Pow((localVelocity.sqrMagnitude / (body.velocity.normalized * maxVelocity).sqrMagnitude), (1.0f / 2.0f)));

        //    if (temp <= 0)
        //    {
        //        currentPedals = 0;
        //    }
        //    else
        //    {
        //        currentPedals = temp;
        //    }
        //}

        // Rotate front and back wheels based on velocity
        frontWheel.transform.Rotate(new Vector3(frontRotationRate * localVelocity.z, 0, 0));
        backLeftWheel.transform.Rotate(new Vector3(backRotationRate * localVelocity.z, 0, 0));
        backRightWheel.transform.Rotate(new Vector3(backRotationRate * localVelocity.z, 0, 0));

        // Handle Forward and Reverse forces
        if (Mathf.Abs(thrust) > 0)
            body.AddForce(transform.forward * thrust);

        // Handle Turn forces

        // Turning Right
        if (turnValue > 0)
        {
            // Going Backwards
            if (isReverse)
            {
                if ((canTurn || canTurnWhenStopped) && grounded) body.AddRelativeTorque(Vector3.up * -turnValue * turnStrength);

                if (handleBars != null) handleBars.transform.localRotation = Quaternion.Euler(new Vector3(originalOrientation.x, originalOrientation.y + (turnValue * maxTurnAngle), handlePivot.transform.localRotation.eulerAngles.z));
            }
            // Going forward
            else
            {
                if ((canTurn || canTurnWhenStopped) && grounded) body.AddRelativeTorque(Vector3.up * turnValue * turnStrength);

                if (handleBars != null) handleBars.transform.localRotation = Quaternion.Euler(new Vector3(originalOrientation.x, originalOrientation.y + (turnValue * maxTurnAngle), handlePivot.transform.localRotation.eulerAngles.z));
            }

            currentAngle = (turnValue * maxTurnAngle);
        }
        // Turning Left
        else if (turnValue < 0)
        {

            // Going Backwards
            if (isReverse)
            {
                if (canTurn) body.AddRelativeTorque(Vector3.up * -turnValue * turnStrength);

                if (handleBars != null) handleBars.transform.localRotation = Quaternion.Euler(new Vector3(originalOrientation.x, originalOrientation.y + (turnValue * maxTurnAngle), handlePivot.transform.localRotation.eulerAngles.z));
            }
            // Going forward
            else
            {
                if (canTurn) body.AddRelativeTorque(Vector3.up * turnValue * turnStrength);

                if (handleBars != null) handleBars.transform.localRotation = Quaternion.Euler(new Vector3(originalOrientation.x, originalOrientation.y + (turnValue * maxTurnAngle), handlePivot.transform.localRotation.eulerAngles.z));
            }

            currentAngle = (turnValue * maxTurnAngle);
        }

        // Limit max velocity
        if (body.velocity.sqrMagnitude > (body.velocity.normalized * maxVelocity).sqrMagnitude)
        {
            body.velocity = body.velocity.normalized * maxVelocity;
        }
    }
}
