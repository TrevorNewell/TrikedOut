using UnityEngine;
using System.Collections.Generic;

public class PlaceManager : MonoBehaviour
{
    public float[] speedPercentages = new float[4] { 0.85f, 0.95f, 1.05f, 1.15f };
    public float[] timeBetweenDrops = new float[4] { 25f, 20f, 15f, 10f};
    public float[] chanceOfDrop = new float[4] { 0.1f, 0.2f, 0.4f, 0.8f};

    public GameObject dropPrefab;
    public bool raceStarted = false;

    private Checkpoint[] checkpoints;
    private GameObject[] players;
    private int[] passed;
    private int[] places;
    private int playerCount;
    private float[] timesTilNextSpawn = new float[4] { 0f, 0f, 0f, 0f };

    // Use this for initialization
    void Start()
    {
        checkpoints = gameObject.GetComponentsInChildren<Checkpoint>();
        playerCount = -1;

        /*AudioListener[] myListeners = FindObjectsOfType<AudioListener>() as AudioListener[];
        foreach (AudioListener a in myListeners)
        {
            Debug.Log("Found:  " + a.gameObject);
        }*/
    }

    public void UpdatePassed(int id)
    {
        passed[id - 1]++;
    }

    public int GetPlace(int id)
    {
        for (int i = 0; i < places.Length; i++)
        {
            if (places[i] == id - 1)
                return i + 1;
        }
        return -1;
    }

    public int[] GetTrikesAhead(int id)
    {
        int i;
        for(i = 0; i < places.Length; i++)
        {
            if (places[i] == id - 1)
                break;
        }
        if (i < 1) return null;
        int[] retVal = new int[i];
        for(i = 0; i < retVal.Length; i++)
        {
            retVal[i] = places[i] + 1;
        }
        return retVal;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (!raceStarted) return;

        if (playerCount == -1)
        {
            playerCount = GetComponent<RaceSetup>().playerCount;
            players = new GameObject[playerCount];
            passed = new int[playerCount];
            for (int i = 0; i < playerCount; i++)
            {
                players[i] = GameObject.Find("P" + (i + 1).ToString());
            }
        }

        //if (Input.GetKeyDown(KeyCode.Space)) tempStart = true;
        //if (!tempStart) return;

        int[] tempPlaces = new int[playerCount];
        for (int i = 0; i < playerCount; i++)
        {
            int maxj = 0;
            for (int l = 0; l < playerCount; l++)
            {
                bool starterFound = false;
                for (int m = 0; m < i; m++)
                {
                    if (tempPlaces[m] == l) starterFound = true;
                }
                if (!starterFound)
                {
                    maxj = l;
                    break;
                }
            }
            for (int j = 0; j < playerCount; j++)
            {
                bool found = false;
                for (int k = 0; k < i; k++) if (tempPlaces[k] == j) found = true;
                if (passed[j] > passed[maxj])
                {
                    if (!found) maxj = j;
                }
                else if (passed[j] == passed[maxj] && j != maxj)
                {
                    //compare distances
                    int cj = (passed[j] / 2) % checkpoints.Length;
                    Vector2 pl1 = new Vector2(players[j].transform.position.x, players[j].transform.position.z);
                    Vector2 pl2 = new Vector2(players[maxj].transform.position.x, players[maxj].transform.position.z);
                    Vector2 cl = new Vector2(checkpoints[cj].transform.position.x, checkpoints[cj].transform.position.z);

                    if (Vector2.Distance(pl1, cl) < Vector2.Distance(pl2, cl))
                    {
                        if (!found) maxj = j;
                    }
                }
            }

            tempPlaces[i] = maxj;
        }

        places = tempPlaces;

        for (int i = 0; i < playerCount; i++)
        {
            int p = places[i];
            players[p].GetComponent<NewMove>().targetMaxSpeed = speedPercentages[i];
            timesTilNextSpawn[p] += Time.deltaTime;
            if (timesTilNextSpawn[p] >= timeBetweenDrops[i])
            {
                timesTilNextSpawn[p] = 0f;
                if (Random.Range(0f, 1f) < chanceOfDrop[i])
                {
                    int cj = (passed[p] / 2) % checkpoints.Length + 1;
                    if (cj >= checkpoints.Length)
                    {
                        cj = 0;
                    }
                    GameObject drop = Instantiate(dropPrefab);
                    drop.transform.position = checkpoints[cj].transform.FindChild("DropSpawn").transform.position;
                    drop.GetComponent<Capsule>().SetLayer(10 + p);
                }
            }
        }

        /*places = new LinkedList<int>();
        bool[] placed = new bool[playerCount];
        LinkedListNode<int> lastFromPrev = null;

        for (int i = checkpoints.Length - 1; i >= 0; i--)
        {
            float maxDist = float.MaxValue;
            for (int j = 0; j < playerCount; j++)
            {
                if (i != 0 && !checkpoints[i - 1].hasPassed(j + 1))
                    continue;
                if (!placed[j])
                {
                    Vector2 pl = new Vector2(players[j].transform.position.x, players[j].transform.position.z);
                    Vector2 cl = new Vector2(checkpoints[i].transform.position.x, checkpoints[i].transform.position.z);
                    if (Vector2.Distance(pl, cl) < maxDist)
                    {
                        if (lastFromPrev == null) places.AddFirst(j);
                        else places.AddAfter(lastFromPrev, j);
                        maxDist = Vector2.Distance(pl, cl);
                        placed[j] = true;
                    }
                    else
                    {
                        LinkedListNode<int> current = (lastFromPrev == null) ? places.First : lastFromPrev;
                        LinkedListNode<int> prev = null;

                        while (current != null)
                        {
                            Vector2 ppl = new Vector2(players[current.Value].transform.position.x, players[current.Value].transform.position.z);
                            if (Vector2.Distance(pl, cl) < Vector2.Distance(ppl, cl))
                                break;
                            else
                            {
                                prev = current;
                                current = current.Next;
                            }
                        }

                        places.AddAfter(prev, j);
                        placed[j] = true;
                    }
                }
            }
            lastFromPrev = places.Last;
        }*/
        
        /*for (int i = 0; i < places.Length; i++)
        {
            print((i + 1) + " " + "P" + (places[i] + 1));
        }*/
	}
}
