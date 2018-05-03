using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine;

public class UIBehaviour : MonoBehaviour
{
	public int health = 100;
    public bool hasBeenSpotted = false;
	public Text healthText;
    public Text detectionText;
	void Start () // Use this for initialization
    {
		healthText.text = health.ToString();
	}
	void Update () // Update is called once per frame
    {
		healthText.text = health.ToString();
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
	void FixedUpdate()
	{
		//if(hasBeenSpotted == true)
		//{
			//health--;
		//}
	}
}

