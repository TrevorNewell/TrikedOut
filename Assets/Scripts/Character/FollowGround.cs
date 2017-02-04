using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowGround : MonoBehaviour
{
    public float lerpFactor = 0.2f;
    public float maxSlopeAllowed = 20f;
    public GameObject castPoint;

    private int layerMask;
    private NewMove move;

    // Use this for initialization
    void Start()
    {
        layerMask = 1 << LayerMask.NameToLayer("Terrain");
        //layerMask = ~layerMask;
        move = GetComponentInParent<NewMove>();
    }

	// Update is called once per frame
	void Update ()
    {
        //Raycast straight down, we're going to check the angle of the raycast hit and use that to determine our angle
        RaycastHit hitDown;
        Vector3 dirD = Vector3.down;
        //This should always be true unless we are very far in the air for some reason
        if (Physics.Raycast(castPoint.transform.position, dirD, out hitDown, 100f))
        {
            //This finds the angle we need. It seems to return 180 degrees more than I expect, but that's easy to account for
            float cosine = Vector3.Dot(dirD, hitDown.normal);
            float cosineDegrees = Mathf.Acos(cosine) * Mathf.Rad2Deg;

            //Next we raycast forward to see if we hit anything (ie the road) which we should only hit if we are going uphill
            //It would be good to give the road a different layer/tag and only check for hits on that layer/tag.
            RaycastHit hitForward;
            Vector3 dirF = castPoint.transform.TransformDirection(Vector3.forward);
            bool goingUp = Physics.Raycast(castPoint.transform.position, dirF, out hitForward, 10f, layerMask);

            //Do the same thing as before but going backwards. 
            RaycastHit hitBack;
            Vector3 dirB = castPoint.transform.TransformDirection(Vector3.back);
            bool goingDown = Physics.Raycast(castPoint.transform.position, dirB, out hitBack, 15f, layerMask);

            //If we are going up we need a negative angle, so check to make sure that
            //1) we are going up
            //2) if something is behind us that we hit with our raycast that we are closer to the thing in front
            //3) that otherwise we are not going down
            if (goingUp)
            {
                if ((goingDown && hitForward.distance < hitBack.distance) || !goingDown)
                {
                    cosineDegrees = cosineDegrees - 180f;
                    move.UpHill();
                    print("UPHILL");
                }
            }
            //Otherwise we need a positive angle
            else
            {
                if (goingDown)
                {
                    move.DownHill();
                    print("DOWNHILL");
                }
                else
                {
                    move.Flat();
                    print("FLAT");
                }
                //if((goingUp && hitForward.distance >= hitBack.distance) || !goingUp)
                cosineDegrees = 180f - cosineDegrees;
            }

            //This is a safety check. Occasionally things can go wrong if random objects interfere with the raycasts or if you are sitting in a particularly tight valley
            //By clamping ourselves to a maximum allowed slope, we make sure nothing crazy happens in the worst case scenario
            if(Mathf.Abs(cosineDegrees) < maxSlopeAllowed)
                transform.rotation = Quaternion.LerpUnclamped(transform.rotation, Quaternion.Euler(cosineDegrees, transform.rotation.eulerAngles.y, transform.rotation.eulerAngles.z), lerpFactor * Time.deltaTime);
        }
	}
}
