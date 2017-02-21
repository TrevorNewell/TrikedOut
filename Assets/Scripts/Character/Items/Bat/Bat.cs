using UnityEngine;
using System.Collections;
using System;

public class Bat : MonoBehaviour, Item
{
    public float swingDuration;
    public float downScaleFactor;
    public float hopDuration;
    public float hopHeight;
    public float maxSwingAngle;
    public float slowFactor;
    public float maxScale = 20f;
    public GameObject batModel;

    private bool hasBat;
    private float batDuration;
    private bool swinging;
    private bool backswing;
    private bool endSwing;
    private float currentAngle;
    private float anglesPerSecond;
    private Vector3 startRot;
    private PlaceManager placeManager;
    private int myPlayerID;
    private bool manualAnim;
    private float currentScale;
    private float ogScale;
    private float scalePerSecond;
    private float downScalePerSecond;

    private Vector3 ogPosition;
    private Quaternion ogRotation;

    private GameObject[] playersInRange;

    private Animator anim;

    // Use this for initialization
    void Start()
    {
        //swinging = false;
        backswing = false;
        endSwing = false;
        manualAnim = true;
        anglesPerSecond = maxSwingAngle / swingDuration;
        ogPosition = transform.localPosition;
        ogRotation = transform.localRotation;
        //batModel.SetActive(false);
        playersInRange = new GameObject[4];
    }

    public bool Swinging()
    {
        return swinging;
    }

    public void GiveBat(float bd)
    {
        hasBat = true;
        batDuration = bd;
        batModel.SetActive(true);
    }

	// Update is called once per frame
	void Update ()
    {
        if (batDuration > 0)
        {
            batDuration -= Time.deltaTime;
        }
        if (batDuration <= 0)
        {
            hasBat = false;
            if (!swinging) Deactivate();
        }

        if (swinging)
        {
            //this code should be replaced by an animation
            //we should show the artists how to do animations

            if (!backswing)
            {
                currentAngle += anglesPerSecond * Time.deltaTime;
                currentScale += scalePerSecond * Time.deltaTime;
                batModel.transform.localScale = Vector3.one * currentScale;

                if (currentAngle >= maxSwingAngle)
                {
                    backswing = true;
                    for (int i = 0; i < 4; i++)
                    {
                        if (playersInRange[i] != null)
                        {
                            playersInRange[i].GetComponent<ModelController>().SpinOut(5);
                            playersInRange[i].GetComponent<NewMove>().SetBoost(0f, 2f, 0f);
                        }
                        //DO SOMETHING TO THE OTHER PLAYERS
                        //GameObject.Find("P" + i.ToString()).GetComponentInChildren<ArcadeTrikeController>().Pop(slowFactor);
                    }
                }
            }
            else
            {
                if (currentScale > ogScale)
                {
                    currentScale -= downScalePerSecond * Time.deltaTime;

                    if (currentScale < ogScale)
                    {
                        currentScale = ogScale;
                        batModel.transform.localScale = Vector3.one * currentScale;
                        Deactivate();
                    }

                    batModel.transform.localScale = Vector3.one * currentScale;

                }

                if (currentAngle > 0) currentAngle = currentAngle - anglesPerSecond * Time.deltaTime;
                if (currentAngle <= 0)
                {
                    currentAngle = 0;
                }
            }
            Vector3 newRot = new Vector3(startRot.x + currentAngle, startRot.y, startRot.z);
            if (manualAnim) batModel.transform.localRotation = Quaternion.Euler(newRot);
            //batModel.transform.localRotation = Quaternion.Euler(newRot);
        }
    }

    public void SetAnimator(Animator a)
    {
        anim = a;
    }

    public void SetAnimatedSwing()
    {
        manualAnim = false;
    }

    public void Activate()
    {
        if (!hasBat || swinging) return;
        batModel.SetActive(true);
        swinging = true;
        backswing = false;
        endSwing = false;
        currentAngle = 0;
        ogScale = batModel.transform.localScale.x;
        currentScale = ogScale;
        scalePerSecond = (maxScale - ogScale) / swingDuration;
        downScalePerSecond = (maxScale - ogScale) / downScaleFactor;
        placeManager = GameObject.Find("Race Manager").GetComponent<PlaceManager>();
        if (anim != null)
        {
            anim.SetBool("Swinging", true);
        }
        SetDefaultScale();
    }

    public void Deactivate()
    {
        //Destroy(gameObject);
        swinging = false;
        if(!hasBat) batModel.SetActive(false);
    }

    public void SetDefaultScale()
    {
        transform.localRotation = ogRotation;//new Vector3(100f, 100f, 100f);
        transform.localPosition = ogPosition;//new Vector3(1.3f, 0.4f, 0.09f);
    }

    public void SetPlayerID(int id)
    {
        myPlayerID = id;
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            playersInRange[int.Parse(other.name.Substring(1)) - 1] = other.gameObject;
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            playersInRange[int.Parse(other.name.Substring(1)) - 1] = null;
        }
    }
}
