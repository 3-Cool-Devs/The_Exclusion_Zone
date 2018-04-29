using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class UIBehaviour : MonoBehaviour
{
    public bool hasBeenSpotted = false;
    public Text detection;
	void Start () // Use this for initialization
    {
		
	}
	void Update () // Update is called once per frame
    {
        if (hasBeenSpotted == false)
        {
            detection.text = "Hidden";
        }
        if (hasBeenSpotted == true)
        {
            detection.text = "Detected";
        }
	}
}
