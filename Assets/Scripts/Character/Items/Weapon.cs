using UnityEngine;
using System.Collections;

public interface Weapon
{
    float GetFireRate();

    int GetUses();

    float GetRange();
}
