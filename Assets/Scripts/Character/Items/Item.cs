using UnityEngine;
using System.Collections;

public interface Item
{
    void Activate();

    void Deactivate();

    void TellDirectional(int d);
}
