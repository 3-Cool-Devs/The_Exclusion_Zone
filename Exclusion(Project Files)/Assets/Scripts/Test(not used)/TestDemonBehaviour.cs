using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.PostProcessing;
using UnityEngine;


public class TestDemonBehaviour : MonoBehaviour
{
    public PostProcessingBehaviour PPB;
    public GameObject Player;
    public GameObject Head;
	public Animator anim;
	public GameObject Demon;
	public GameObject[] waypoints;
    private Vector3 direction;
	public float angle;
	public float demonNoticeRange = 10f;
	public float demonNoticeFOV = 60;
	public float demonDamage = 5f;
	public float angleBetweenDemonAndPlayer;
    public float PPBEffect = 0.1f;
    public bool isLooking;
    public UIBehaviour uiBehav;
	public LayerMask viewMask;
	public int currentWP;
    public PostProcessingBehaviour GetPPB()
    {
        return PPB;
    }
	public GameObject GetPlayer()
	{
		return Player;
	}
    public GameObject GetHead()
    {
        return Head;
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
        direction = Player.transform.position - Head.transform.position; // distance between the player and the demon
        direction.y = 0;
        angle = Vector3.Angle(direction, Head.transform.forward); // The angle
        if (Vector3.Distance(Player.transform.position, Head.transform.position) < demonNoticeRange && angle < demonNoticeFOV && !Physics.Linecast(Head.transform.position, Player.transform.position, viewMask))
        {
            anim.SetBool("doesSee", true);
            uiBehav.hasBeenSpotted = true;
            PPB.profile.chromaticAberration.enabled = true;
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
            PPB.profile.chromaticAberration.enabled = false;
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
