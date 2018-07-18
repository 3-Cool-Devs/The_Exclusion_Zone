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
        FlashlightOff();
        //isActive = true; //is the flashlight on at the start of the game?
        batteryleft = 100f;
        flashLight.intensity = 0.9f;
	}
	
	// Update is called once per frame
	void Update () 

	{
		if (Input.GetKeyDown (KeyCode.Mouse1) && flashLight.intensity > 0f) {
            FlashlightOn();
        }

        if (flashLight.intensity <= 0f)
        {
            FlashlightOff();
        }

		if (Input.GetKeyDown (KeyCode.Mouse1) && flashLight.enabled)
			{
            FlashlightOff();

            }


		if (isActive) 
		{
			flashLight.enabled = true;
			//isActive = true;
			batteryPercentage = batteryleft;
			batteryPercentage --;
			flashLight.intensity -= 0.02f * Time.deltaTime;
		} 
	}
		
    void FlashlightOn()
    {
        isActive = true;
        print("I'm On");
    }

    void FlashlightOff()
    {
        flashLight.enabled = false;
        isActive = false;
        batteryleft = batteryPercentage;
    }
}
