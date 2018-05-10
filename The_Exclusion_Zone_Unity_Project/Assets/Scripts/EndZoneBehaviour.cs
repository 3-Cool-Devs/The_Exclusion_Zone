using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class EndZoneBehaviour : MonoBehaviour 
{
	public UIBehaviour UIB;
	void Start () // Use this for initialization
	{
		
	}
	void Update () // Update is called once per frame
	{
		
	}
	void OnTriggerEnter (Collider other) // function OnTriggerEnter, checks if you are in the collider of the endzone and you have the key variable on, it reloads the level
	{
		if (other.CompareTag("Player")) 
		{
			if(UIB.hasKey == true)
			{
				SceneManager.LoadScene("game");
			}
		}
	}
}
