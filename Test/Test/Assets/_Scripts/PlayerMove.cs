using UnityEngine;
using System.Collections;

public class PlayerMove : MonoBehaviour
{

    private Vector3 movementVector;
    private CharacterController charCon;
    
    private int lastAction = 0;
    delegate bool initcompare(int i);
    private initcompare ic;

    public float moveSpeedInc = 0.5f;
    public float maxMoveSpeed = 2;
    [Range(0, 1)] public float percentOfMoveSpeedToDrift = 1;
    public bool allowDrifting = false;

    public float slowFactor = 0.01f;
    public float rotateSpeed = 4;
    public float rotateSlow = 1;
    public bool dynamicRotation = true;

    private float currentAngle = 0;
    private float targetAngle = 0;
    private float maxRotate;
    private float xC;
    private float yC;

    public float previousAngle;
    public float angleThisFrame;

    // Use this for initialization
    void Start ()
    {
        currentAngle = transform.rotation.y;

        charCon = GetComponent<CharacterController>();
        ic = ic1;
        maxRotate = rotateSpeed;
        xC = Mathf.Cos((currentAngle + 90) * Mathf.Deg2Rad);
        yC = Mathf.Sin((currentAngle + 90) * Mathf.Deg2Rad);
    }

    bool ic1(int i)
    {
        if (i <= 3 && i != 0)
        {
            ic = ic2;
            return true;
        }
        return false;
    }

    bool ic2(int i)
    {
        return i == 3;
    }

    // Update is called once per frame
    void Update()
    {
        int leftPedal = Mathf.CeilToInt(Input.GetAxis("LeftTrigger")) * 1;
        int rightPedal = Mathf.CeilToInt(Input.GetAxis("RightTrigger")) * 2;

        float xRot = Input.GetAxis("LeftJoystickX");
        float yRot = Input.GetAxis("LeftJoystickY");

        if ((xRot != 0 || yRot != 0))// && movementVector.magnitude != 0)
        { 
            targetAngle = Mathf.Atan2(yRot, xRot) * Mathf.Rad2Deg + 90;

            float distance = targetAngle - currentAngle;
            if(currentAngle < 90 && targetAngle > currentAngle + 180)
            {
                currentAngle += 360;
                distance = targetAngle - currentAngle;
            }
            else if(targetAngle < 90 && currentAngle > targetAngle + 180)
            {
                currentAngle -= 360;
                distance = currentAngle - targetAngle;
            }

            currentAngle += distance * rotateSpeed * Time.deltaTime;
            transform.rotation = Quaternion.AngleAxis(currentAngle, Vector3.up);

            xC = Mathf.Cos((currentAngle - 90) * Mathf.Deg2Rad);
            yC = Mathf.Sin((currentAngle + 90) * Mathf.Deg2Rad);
            movementVector.x = movementVector.magnitude * xC;
            movementVector.z = movementVector.magnitude * yC;
        }

        if (ic((leftPedal | rightPedal) + lastAction))
        {
            lastAction = leftPedal | rightPedal;
            movementVector.x += moveSpeedInc * xC; 
            movementVector.z += moveSpeedInc * yC;
            if (dynamicRotation) rotateSpeed -= rotateSlow;
            if (rotateSpeed < 0) rotateSpeed = 0;
        }


        bool brakePressed = Input.GetButtonDown("B");
        bool brakeHeld = Input.GetButton("B");

        if (brakePressed)
        {
            movementVector.x -= moveSpeedInc * xC;
            movementVector.z -= moveSpeedInc * yC;
            if (dynamicRotation) rotateSpeed -= rotateSlow;
            if (rotateSpeed < 0) rotateSpeed = 0;
        }

        if (brakeHeld)
        {
            movementVector.x -= (moveSpeedInc * xC) / 10;
            movementVector.z -= (moveSpeedInc * yC) / 10;
            if (dynamicRotation) rotateSpeed -= rotateSlow;
            if (rotateSpeed < 0) rotateSpeed = 0;
        }

        bool drift = Input.GetButton("X");

        // You can drift if you're going half as fast as the maximum move speed
        if (allowDrifting)
        {
            if (drift && movementVector.magnitude >= percentOfMoveSpeedToDrift)
            {
                angleThisFrame = transform.rotation.y;

                print("You would be drifting if it were correctly implemented.");

                // Drift Left
                if (angleThisFrame < previousAngle)
                {
                    print("Drifting Left");
                }
                // Drift Right

                else if (angleThisFrame > previousAngle)
                {
                    print("Drifting Right");
                }
                else
                {
                    print("Wasn't Caught: " + angleThisFrame + " Last Frame: " + previousAngle);
                }
            }
            else if (drift)
            {
                print("You're not going fast enough to drift.");
            }
        }

        movementVector.x = movementVector.x - slowFactor * xC;
        if (Mathf.Sign(xC) != Mathf.Sign(movementVector.x)) movementVector.x = 0;
        if (Mathf.Abs(movementVector.x) > Mathf.Abs(maxMoveSpeed * xC)) movementVector.x = maxMoveSpeed * xC;
        movementVector.z = movementVector.z - slowFactor * yC;
        if (Mathf.Sign(yC) != Mathf.Sign(movementVector.z)) movementVector.z = 0;
        if (Mathf.Abs(movementVector.z) > Mathf.Abs(maxMoveSpeed * yC)) movementVector.z = maxMoveSpeed * yC;
        if (dynamicRotation) rotateSpeed += rotateSlow * Time.deltaTime;
        if (rotateSpeed > maxRotate) rotateSpeed = maxRotate;

        //charCon.Move(movementVector * Time.deltaTime);

        previousAngle = transform.rotation.y; // Used in comparison for drift to decide left or right
	}

    void FixedUpdate()
    {
        GetComponent<Rigidbody>().velocity = movementVector;
    }
}
