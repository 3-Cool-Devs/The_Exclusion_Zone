using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class GameEvents
{


    //Events
    #region Events

    public static void ReportDemonStateChange(DemonState demonstate)
    {
        //Debug.Log (">>> EVENT: ReportOnVisionChange((" + vision +")");
        if (OnDemonStateChange != null)
            OnDemonStateChange(demonstate);
    }

    #endregion
}
