using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Generator : MonoBehaviour 
{
	public GameObject Lights;
    public GameObject Door;
	void Start () // Use this for initialization
    {
		
	}
	void Update () // Update is called once per frame
    {
		if(Input.GetKeyDown(KeyCode.E))
		{
		    Debug.Log("Generator has been activated");
			Lights.SetActive(true);
            Door.SetActive(false);
		}	
	}
}
