using System;
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
	public float angle;
	public float demonNoticeRange = 10f;
	public float demonNoticeFOV = 60;
	public float demonDamage = 5f;
	public float angleBetweenDemonAndPlayer;
    public bool isLooking;
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
    public void Update() // Update is called once per frame
    {
        DemonSight();
        DemonLooking();
    }
    public void DemonSight()
    {
        direction = Player.transform.position - Demon.transform.position; // distance between the player and the demon
        direction.y = 0;
        angle = Vector3.Angle(direction, Demon.transform.forward); // The angle
        if (Vector3.Distance(Player.transform.position, Demon.transform.position) < demonNoticeRange && angle < demonNoticeFOV && !Physics.Linecast(Demon.transform.position, Player.transform.position, viewMask))
        {
            anim.SetBool("doesSee", true);
            uiBehav.hasBeenSpotted = true;
        }
    }
    public void DemonLooking()
    {
        if (isLooking == true)
        {
            anim.SetBool("doesSee", false);
            anim.SetBool("hasSeen", true);
            uiBehav.hasBeenSpotted = false;
            isLooking = false;
        }
        else
        {
            Patroling();
        }
    }
    public void Patroling()
    {
        if (isLooking == false)
        {
            anim.SetBool("hasSeen", false);
        }
    }
}
