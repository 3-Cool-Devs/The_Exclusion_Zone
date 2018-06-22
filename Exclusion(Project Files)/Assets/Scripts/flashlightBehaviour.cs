using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class flashlightBehaviour : MonoBehaviour
{

	public Light flashLight;

	public bool isActive;
	public float lightStep = 0.002f;

	public float batteryPercentage = 100f;
	public float batteryleft;

	public float mEndTime = 0;
	public float mStartTime = 0;

	void Awake()
	{
		mStartTime = Time.time;
		mEndTime = mStartTime + 30;
	}

	void Start ()
	{
		//isActive = true; //is the flashlight on at the start of the game?
		batteryleft = 100f;	
		flashLight.intensity = 5;
	}
	
	// Update is called once per frame
	void Update () 

	{
		if (Input.GetKeyDown (KeyCode.Mouse1) && flashLight.intensity > 0f) {
			isActive = true;
		}

		if (Input.GetKeyDown (KeyCode.Mouse1) && flashLight.enabled)
			{
			flashLight.enabled = false;
				isActive = false;
				batteryleft = batteryPercentage;
			}


		if (isActive) 
		{
			flashLight.enabled = true;
			//isActive = true;
			batteryPercentage = batteryleft;
			batteryPercentage --;
			flashLight.intensity -= 0.1f * Time.deltaTime;
		} 
	}
		



}
