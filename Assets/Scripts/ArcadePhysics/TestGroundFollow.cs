using UnityEngine;
using System.Collections;

public class TestGroundFollow : MonoBehaviour
{
    public float turnSpeed;
    public float speed;

    public CharacterController controller;
    public float curDir = 0f; // compass indicating direction
    public float vertSpeed = 0f; // vertical speed (see note)
    public float horSpeed = 0f;
    public Vector3 curNormal = Vector3.up; // smoothed terrain normal

    void OnCollisionStay(Collision col)
    {
        if (col.collider.CompareTag("Road"))
        {
            vertSpeed = 0;
        }
    }

    void Start()
    {
        controller = gameObject.GetComponent<CharacterController>();
    }

    void Update()
    {
        float turn = Input.GetAxis("Horizontal") * turnSpeed * 100 * Time.deltaTime;
        curDir = (curDir + turn) % 360; // rotate angle modulo 360 according to input
        RaycastHit hit;
        if (Physics.Raycast(transform.position, -curNormal, out hit))
        {
            curNormal = Vector3.Lerp(curNormal, hit.normal, 4 * Time.deltaTime);
            Quaternion grndTilt = Quaternion.FromToRotation(Vector3.up, curNormal);
            transform.rotation = grndTilt * Quaternion.Euler(0, curDir, 0);
            transform.position = new Vector3(transform.position.x, transform.position.y - hit.distance, transform.position.z); // This line forces the object to follow the terrain regardless of how fast the height is changing.  In the future we can put this in an if that lets us manually make the player jump (as is the case for when we are ulted, or if we want to send them on a jump.  If this is commented gravity is simulated but not too well.
        }
        Vector3 movDir;
        movDir = transform.forward * Input.GetAxis("Vertical") * speed;
        // moves the character in horizontal direction (gravity changed!)
        if (controller.isGrounded)
        {
            vertSpeed = 0; // zero v speed when grounded
            Debug.Log("grounded");
        }
        else
        {
            vertSpeed -= 9.8f * Time.deltaTime; // apply gravity
            Debug.Log("not grounded");
        }
            movDir.y = vertSpeed; // keep the current vert speed
        horSpeed = movDir.z;
        controller.Move(movDir * Time.deltaTime);
    }
}