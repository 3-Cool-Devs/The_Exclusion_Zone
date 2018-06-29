using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;
using UnityEngine;

public class TestBehaviourBase : StateMachineBehaviour
{
    public GameObject Demon;
    public GameObject Player;
    public GameObject[] waypoints;
    //public Vector3[] waypoints;
    public float waypointRange = 3.0f;
    public float waypointRotationSpeed = 1.0f;
    public float waypointSpeed = 2.0f;
	GameObject NPC;
	public Transform pathHolder;
    public GameObject pathHolderObject;
	public float chaseRotationSpeed = 2.0f;
	public float chaseSpeed = 5.0f;
	public float angle;
    public float turnangle;
    public float demonRotation = 0.1f;
	public float demonNoticeRange = 10f;
	public float demonChaseRange = 5f;
	public float demonNoticeFOV;
	public float demonSpeed = 1.5f;
	public float demonChaseSpeed = 2f;
	public float demonDamage = 5f;
	public float angleBetweenDemonAndPlayer;
	public LayerMask viewMask;
	public int currentWP;
	public bool isLooking;
    public NavMeshAgent myAgent;
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {

        Demon = animator.gameObject;
		Player = Demon.GetComponent<TestDemonBehaviour>().GetPlayer();
        waypoints = Demon.GetComponent<TestDemonBehaviour>().GetWaypoints();
		myAgent = Demon.GetComponent<NavMeshAgent> ();
		isLooking = Demon.GetComponent<TestDemonBehaviour>().isLooking;
    }
    public int FindClosestWP() // the code finds the closest waypoint
    {
        if (waypoints.Length == 0)
        {
            return -1;
        }
        int closest = 0;
        float lastDist = Vector3.Distance(Demon.transform.position, waypoints[currentWP].transform.position);
        for (int i = 1; i < waypoints.Length; i++)
        {
            float thisDist = Vector3.Distance(Demon.transform.position, waypoints[i].transform.position);
            if (lastDist > thisDist && i != currentWP)
            {
                closest = i;
            }
        }
        return closest;
    }
    void Start () // Use this for initialization
    {
        currentWP = 0;
    }
    void Update () // Update is called once per frame
    {
		
	}
}
