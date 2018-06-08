using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class UIBehaviour : MonoBehaviour
{
	public float health = 100; // the health of the player
    public bool hasBeenSpotted = false; // a bool that tells the UI if you have been spotted or not
	public bool hasKey = false; // A bool that tells the UI if you have the key or not 
	public Text healthText; // the text for the health
	public Text detectionText; // the text for if you have been detected
	public Text hasKeyText; // the text if you have the key
	public GameObject player; 
	public Collider playerCol;
	public DemonBehaviour DB; // variable for the demon script
	void Start () // Use this for initialization
    {
		healthText.text = "Health:" + health.ToString(); // sets the health in the start frame to the health
		hasKey = false;
	}
	void Update () // Update is called once per frame
    {
		HasOrNotKey ();
		HasSpottedOrNot ();
		if (health < 0) 
		{
			SceneManager.LoadScene("game");
		}
	}
	public void HasSpottedOrNot() // function that controls the health and damage that the player gets if he is in the FOV of the demon
	{
		healthText.text = "Health:" + health.ToString("0");
		if (hasBeenSpotted == false)
		{
			detectionText.text = "Safe";
		}
		if (hasBeenSpotted == true)
		{
			detectionText.text = "Detected";
			health -= DB.demonDamage * Time.deltaTime ;
		}
	}
	public void HasOrNotKey() // function that controls the UI elements that tell you if you have the key or not 
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
}

