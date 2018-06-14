using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestBehaviourFSMChase : StateMachineBehaviour
{
    //private NavMeshAgent myAgent;
    public Transform target;
    //
    GameObject NPC;
    GameObject[] waypoints;
    public float chaseRotationSpeed = 2.0f;
    public float chaseSpeed = 5.0f;
    public float waypointRange = 3.0f;
    int currentWP;
    void Awake()
    {
        waypoints = GameObject.FindGameObjectsWithTag("Waypoint");
    }
    void Start() // Use this for initialization
    {
        //myAgent = GetComponent<NavMeshAgent>();
    }
    void Update() // Update is called once per frame
    {
        //myAgent.SetDestination(target.position);
    }
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        NPC = animator.gameObject;
        currentWP = 0;
    }
	// OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
	override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) 
    {
        if (waypoints.Length == 0) 
        {
                return;
        }
        if (Vector3.Distance (waypoints [currentWP].transform.position, NPC.transform.position) < waypointRange) 
        {
            currentWP++;
            if(currentWP >= waypoints.Length)
            {
                currentWP = 0;
            }
        }
        //myAgent.SetDestination (player.transform.position); or use this if on a navmesh
        var direction = waypoints [currentWP].transform.position - NPC.transform.position;
        NPC.transform.rotation = Quaternion.Slerp (NPC.transform.rotation, Quaternion.LookRotation (direction), chaseRotationSpeed * Time.deltaTime);
        NPC.transform.Translate (0, 0, Time.deltaTime * chaseSpeed);
    }
    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) 
    {
	
	}

	// OnStateMove is called right after Animator.OnAnimatorMove(). Code that processes and affects root motion should be implemented here
	//override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}

	// OnStateIK is called right after Animator.OnAnimatorIK(). Code that sets up animation IK (inverse kinematics) should be implemented here.
	//override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) {
	//
	//}
}
