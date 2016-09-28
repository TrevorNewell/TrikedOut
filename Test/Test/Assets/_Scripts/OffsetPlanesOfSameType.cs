using UnityEngine;
using System.Collections;

public class OffsetPlanesOfSameType : MonoBehaviour
{
    public string tagToOffset;
    public float yOffset = 0.001f;

	// Use this for initialization
	void Start ()
    {
        GameObject[] allObjects = UnityEngine.Object.FindObjectsOfType<GameObject>();

        float lastZ = 0;
        bool isFirst = true;
        foreach(GameObject go in allObjects)
        {
            if(go.activeInHierarchy && go.CompareTag(tagToOffset))
            {
                if (isFirst)
                {
                    isFirst = false;

                    go.transform.position = new Vector3(go.transform.position.x, go.transform.position.y + yOffset, go.transform.position.z);
                    lastZ = go.transform.position.y;
                }
                else
                {
                    go.transform.position = new Vector3(go.transform.position.x, lastZ + yOffset, go.transform.position.z);
                    lastZ = go.transform.position.y;
                }
            }
        }
	}
}
