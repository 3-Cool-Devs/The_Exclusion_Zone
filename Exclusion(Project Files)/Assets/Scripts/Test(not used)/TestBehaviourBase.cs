using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestBehaviourBase : StateMachineBehaviour
{
    public GameObject Demon;
    public GameObject Player;
	public GameObject[] waypoints;
    public float waypointRange = 3.0f;
    public float waypointRotationSpeed = 1.0f;
    public float waypointSpeed = 2.0f;
	GameObject NPC;
	public Transform pathHolder;
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
	public LayerMask viewMask;
	public int currentWP;
    //public NavMeshAgent myAgent;
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {

        Demon = animator.gameObject;
		//waypoints = GameObject.FindGameObjectsWithTag("Waypoint");
		Player = Demon.GetComponent<TestDemonBehaviour>().GetPlayer();

    }
    void Start () // Use this for initialization
    {
        //myAgent = GetComponent<NavMeshAgent>();
		GetWaypoint();
		pathHolder =
        currentWP = 0;
    }
    void Update () // Update is called once per frame
    {
		
	}
    void GetWaypoint()
    {
		Vector3[] waypoints = new Vector3[pathHolder.childCount];
		for (int i = 0; i < waypoints.Length; i++)
		{
			waypoints[i] = pathHolder.GetChild(i).position;
			waypoints[i] = new Vector3(waypoints[i].x, Transform.position.y, waypoints[i].z);
		}
    }
}
