using UnityEngine;
using System.Collections;

public interface Item
{
    void Activate();

    void Deactivate();

    void SetDefaultScale();

    void SetPlayerID(int id);
}
