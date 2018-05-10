using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class UIBehaviour : MonoBehaviour
{
	public float health = 100;
    public bool hasBeenSpotted = false;
	public bool hasKey = false;
	public Text healthText;
    public Text detectionText;
	public Text hasKeyText;
	public GameObject player; 
	public Collider playerCol;
	public DemonBehaviour DB;
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
	public void HasSpottedOrNot()
	{
		healthText.text = "Health:" + health.ToString("0");
		if (hasBeenSpotted == false)
		{
			detectionText.text = "Hidden";
		}
		if (hasBeenSpotted == true)
		{
			detectionText.text = "Detected";
			PlayerDamage ();
		}
		if (health == 0) 
		{
			health = 100;

		}
	}
	public void HasOrNotKey()
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
	public void PlayerDamage()
	{
		health -= DB.demonDamage * Time.deltaTime ;
	}
}

