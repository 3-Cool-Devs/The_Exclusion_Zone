using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestDemonBehaviour : MonoBehaviour 
{
	public GameObject Player;
	public Animator anim;
	public GameObject Demon;
	public Transform target;
	public GameObject[] waypoints;
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
	public float demonNoticeFOV;
	public float demonSpeed = 1.5f;
	public float demonChaseSpeed = 2f;
	public float demonDamage = 5f;
	public float angleBetweenDemonAndPlayer;
	public UIBehaviour uiBehav;
	public LayerMask viewMask;
	public int currentWP;
	public GameObject GetPlayer()
	{
		return Player;
	}
	void Start () // Use this for initialization
	{
		anim = GetComponent<Animator>();
	}

	void Update () // Update is called once per frame
	{
		if (Vector3.Distance (target.position, Demon.transform.position) < demonNoticeRange && angle < demonNoticeFOV && !Physics.Linecast (Demon.transform.position, target.position, viewMask)) 
		{ 
			anim.SetBool ("doesSee", true);
		} 
		else 
		{
			anim.SetBool ("doesSee", false);
		}
	}
}
