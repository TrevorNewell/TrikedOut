using UnityEngine;
using System.Collections.Generic;

public class PlaceManager : MonoBehaviour
{
    Checkpoint[] checkpoints;
    GameObject[] players;
    LinkedList<int> places;
    int playerCount;

	// Use this for initialization
	void Start ()
    {
        checkpoints = gameObject.GetComponentsInChildren<Checkpoint>();
        playerCount = -1;
    }

    // Update is called once per frame
    void Update()
    {
        if (playerCount == -1)
        {
            playerCount = GetComponent<RaceSetup>().playerCount;
            players = new GameObject[playerCount];
            for (int i = 0; i < playerCount; i++)
            {
                players[i] = GameObject.Find("P" + (i + 1).ToString());
            }
        }

        places = new LinkedList<int>();
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
        }

        int co = 1;
        foreach (int it in places)
        {
            print(co++ + " " + "P" + (it + 1));
        }
	}
}
