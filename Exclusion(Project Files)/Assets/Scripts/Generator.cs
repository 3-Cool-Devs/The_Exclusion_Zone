using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Generator : MonoBehaviour 
{

	public GameObject Lights;
    public GameObject Door;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () 
	{
		if(Input.GetKeyDown(KeyCode.E))
			{
				Debug.Log("Generator has been activated");
			Lights.SetActive  (true);
            Door.SetActive("false");
			}	
	}
}
