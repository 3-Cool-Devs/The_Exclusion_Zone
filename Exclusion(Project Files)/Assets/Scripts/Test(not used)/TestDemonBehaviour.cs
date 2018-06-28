using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestDemonBehaviour : MonoBehaviour 
{
	public GameObject Player;
	public Animator anim;
	public GameObject Demon;
	public GameObject[] waypoints;
    private Vector3 direction;
    public float waypointRange = 3.0f;
	public float waypointRotationSpeed = 1.0f;
	public float waypointSpeed = 2.0f;
	GameObject NPC;
	public float chaseRotationSpeed = 2.0f;
	public float chaseSpeed = 5.0f;
	public float angle;
	public float demonRotation = 0.1f;
	public float demonNoticeRange = 10f;
	public float demonChaseRange = 5f;
	public float demonNoticeFOV = 60;
	public float demonSpeed = 1.5f;
	public float demonDamage = 5f;
	public float angleBetweenDemonAndPlayer;
    public bool isLooking = false;
    public UIBehaviour uiBehav;
	public LayerMask viewMask;
	public int currentWP;
	public GameObject GetPlayer()
	{
		return Player;
	}
    public GameObject[] GetWaypoints()
    {
        return waypoints;
    }
	void Start () // Use this for initialization
	{
		anim = GetComponent<Animator>();
    }
	void Update () // Update is called once per frame
	{
        direction = Player.transform.position - Demon.transform.position; // distance between the player and the demon
        direction.y = 0;
        angle = Vector3.Angle(direction, Demon.transform.forward); // The angle
        if (Vector3.Distance (Player.transform.position, Demon.transform.position) < demonNoticeRange && angle < demonNoticeFOV && !Physics.Linecast (Demon.transform.position, Player.transform.position, viewMask)) 
		{
			anim.SetBool ("doesSee", true);
            uiBehav.hasBeenSpotted = true;
        }
        if (isLooking == true)
        {
            if (isLooking == false)
            {

            }
        }
       
        else
        {
            anim.SetBool("doesSee", false);
            uiBehav.hasBeenSpotted = false;
        }
	}
}
