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
    public float slowFactor = 0.01f;
    public float rotateSpeed = 4;
    public float rotateSlow = 1;
    public bool dynamicRotation = true;

    private float currentAngle = 0;
    private float targetAngle = 0;
    private float maxRotate;
    private float xC;
    private float yC;

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

        if (xRot != 0 || yRot != 0)
        { 
            targetAngle = Mathf.Atan2(yRot, -1 * xRot) * Mathf.Rad2Deg + 90;

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

            xC = Mathf.Cos((currentAngle + 90) * Mathf.Deg2Rad);
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

        movementVector.x = movementVector.x - slowFactor * xC;
        if (Mathf.Sign(xC) != Mathf.Sign(movementVector.x)) movementVector.x = 0;
        if (Mathf.Abs(movementVector.x) > Mathf.Abs(maxMoveSpeed * xC)) movementVector.x = maxMoveSpeed * xC;
        movementVector.z = movementVector.z - slowFactor * yC;
        if (Mathf.Sign(yC) != Mathf.Sign(movementVector.z)) movementVector.z = 0;
        if (Mathf.Abs(movementVector.z) > Mathf.Abs(maxMoveSpeed * yC)) movementVector.z = maxMoveSpeed * yC;
        if (dynamicRotation) rotateSpeed += rotateSlow * Time.deltaTime;
        if (rotateSpeed > maxRotate) rotateSpeed = maxRotate;

        charCon.Move(movementVector * Time.deltaTime);
	}
}
