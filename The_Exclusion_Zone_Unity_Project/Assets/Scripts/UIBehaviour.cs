using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class UIBehaviour : MonoBehaviour
{
	public int health = 100;
    public bool hasBeenSpotted = false;
	public bool hasKey = false;
	public Text healthText;
    public Text detectionText;
	public Text hasKeyText;
	public GameObject player; 
	public Collider playerCol;
	void Start () // Use this for initialization
    {
		healthText.text = "Health:" + health.ToString();
		hasKey = false;
	}
	void Update () // Update is called once per frame
    {
		HasOrNotKey ();
		HasSpottedOrNot ();
	}
	void HasSpottedOrNot()
	{
		healthText.text = "Health:" + health.ToString();
		if (hasBeenSpotted == false)
		{
			detectionText.text = "Hidden";
		}
		if (hasBeenSpotted == true)
		{
			detectionText.text = "Detected";
		}
		if (health == 0) 
		{
			SceneManager.LoadScene ("Test Redo");
		}
	}
	void HasOrNotKey()
	{
		if(hasKey == false)
		{
			hasKeyText.text = "No key";
		}
		if(hasKey == true)
		{
			hasKeyText.text = "Has Key";
		}
	}
	void FixedUpdate()
	{
		//if(hasBeenSpotted == true)
		//{
			//health--;
		//}
	}
}

