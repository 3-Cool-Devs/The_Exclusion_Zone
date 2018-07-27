using UnityEngine;

public class flashlightBehaviour : MonoBehaviour
{
	public Light flashLight; // Flashlight object, spotlight in scene
	public bool isActive; // bool for turning light on
	public float lightStep = 0.002f; //
	public float batteryPercentage = 100f; // how much battery is available in the beginning of the level
	public float batteryleft; // how much battery power is left
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
	void Update () // Update is called once per frame
    {
		if (Input.GetKeyDown (KeyCode.Mouse1) && flashLight.intensity > 0f)
        {
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
            //batteryPercentage = batteryleft; // uncomment the line of code if you want battery dying true
            //batteryPercentage --; // uncomment the line of code if you want battery dying true
            //flashLight.intensity -= 0.02f * Time.deltaTime; // uncomment the line of code if you want battery dying true
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
        //batteryleft = batteryPercentage; // uncomment the line of code if you want battery dying true
    }
}