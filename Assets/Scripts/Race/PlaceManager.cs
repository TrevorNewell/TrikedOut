using UnityEngine;
using System.Collections.Generic;

public class PlaceManager : MonoBehaviour
{
    Checkpoint[] checkpoints;
    GameObject[] players;
    int[] passed;
    int[] places;
    int playerCount;

	// Use this for initialization
	void Start ()
    {
        checkpoints = gameObject.GetComponentsInChildren<Checkpoint>();
        playerCount = -1;
    }

    public void UpdatePassed(int id)
    {
        passed[id - 1]++;
    }

    // Update is called once per frame
    void Update()
    {
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
        
        places = new int[playerCount];
        for (int i = 0; i < playerCount; i++)
        {
            int maxj = 0;
            for (int l = 0; l < playerCount; l++)
            {
                bool starterFound = false;
                for (int m = 0; m < i; m++)
                {
                    if (places[m] == l) starterFound = true;
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
                for (int k = 0; k < i; k++) if (places[k] == j) found = true;
                if (passed[j] > passed[maxj])
                {
                    if (!found) maxj = j;
                }
                else if (passed[j] == passed[maxj] && j != maxj)
                {
                    //compare distances
                    int cj = passed[j] % checkpoints.Length;

                    Vector2 pl1 = new Vector2(players[j].transform.position.x, players[j].transform.position.z);
                    Vector2 pl2 = new Vector2(players[maxj].transform.position.x, players[maxj].transform.position.z);
                    Vector2 cl = new Vector2(checkpoints[cj].transform.position.x, checkpoints[cj].transform.position.z);

                    if (Vector2.Distance(pl1, cl) < Vector2.Distance(pl2, cl))
                    {
                        if (!found) maxj = j;
                    }
                }
            }

            places[i] = maxj;
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
        
        for (int i = 0; i < places.Length; i++)
        {
            print((i + 1) + " " + "P" + (places[i] + 1));
        }
	}
}
