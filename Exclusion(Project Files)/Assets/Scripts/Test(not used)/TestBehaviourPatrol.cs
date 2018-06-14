using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;
using UnityEngine;

public class TestBehaviourPatrol : MonoBehaviour 
{
	private NavMeshAgent myAgent;
	public Transform target;
	//
	GameObject NPC;
	GameObject[] waypoints;
	public float waypointRange = 3.0f; 
	public float waypointRotationSpeed = 1.0f;
	public float waypointSpeed = 2.0f;
	public float chaseRotationSpeed = 2.0f;
	public float chaseSpeed = 5.0f;
	int currentWP;
    private void Awake()
    {
        waypoints = GameObject.FindGameObjectsWithTag("waypoint");
    }
    void Start () // Use this for initialization
	{
		myAgent = GetComponent<NavMeshAgent> ();
	}
	void Update () // Update is called once per frame
	{
		myAgent.SetDestination (target.position);
	}
	//override public void OnStateEnter (Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
	//{
		//NPC = animator.gameObject;
		//currentWP = 0;
	//}
	//override public void OnStateUpdate (Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
	//{
		//if (waypoints.Length == 0) 
		//{
			//return;
		//}
		//if (Vector3.Distance (waypoints [currentWP].transform.position, NPC.transform.position) < waypointRange) 
		//{
			//currentWP++;
			//if(currentWP >= waypoints.Length)
			//{
				//currentWP = 0;
			//}
		//}
		//myAgent.SetDestination (waypoints [currentWP].transform.position); or use this if on a navmesh
		//var direction = waypoints [currentWP].transform.position - NPC.transform.position;
		//NPC.transform.rotation = Quaternion.Slerp (NPC.transform.rotation, Quaternion.LookRotation (direction), waypointRotationSpeed * Time.deltaTime);
		//NPC.transform.Translate (0, 0, Time.deltaTime * waypointSpeed);
	//}
	//override public void OnStateUpdate (Animator animator, AnimatorStateInfo stateInfo, int layerIndex) //chase
	//{
		//if (waypoints.Length == 0) 
		//{
			//return;
		//}
		//if (Vector3.Distance (waypoints [currentWP].transform.position, NPC.transform.position) < waypointRange) 
		//{
			//currentWP++;
			//if(currentWP >= waypoints.Length)
			//{
				//currentWP = 0;
			//}
		//}
        //myAgent.SetDestination (player.transform.position); or use this if on a navmesh
        //var direction = waypoints [currentWP].transform.position - NPC.transform.position;
		//NPC.transform.rotation = Quaternion.Slerp (NPC.transform.rotation, Quaternion.LookRotation (direction), chaseRotationSpeed * Time.deltaTime);
		//NPC.transform.Translate (0, 0, Time.deltaTime * chaseSpeed);
	//}
	//override public void OnStateExit (Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
	//{

	//}
}
