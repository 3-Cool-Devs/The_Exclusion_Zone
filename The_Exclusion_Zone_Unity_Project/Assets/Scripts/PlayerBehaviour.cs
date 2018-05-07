using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerBehaviour : MonoBehaviour 
{
	public UIBehaviour UIB;
	void Start () // Use this for initialization
	{
		
	}
	void Update () // Update is called once per frame
	{
		
	}
	void OnTriggerEnter (Collider other)
	{
		if (other.CompareTag("Key")) 
		{
			UIB.hasKey = true;
			other.gameObject.SetActive(false);
		}
	}
}
