using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestBehaviourFSMChase : TestBehaviourBase
{
    //private NavMeshAgent myAgent;
    
    //
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
		base.OnStateEnter (animator, stateInfo, layerIndex);
    }
	// OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
	override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) 
    {
		if (Vector3.Distance (Player.transform.position, Demon.transform.position) < demonNoticeRange && angle < demonNoticeFOV && !Physics.Linecast (Demon.transform.position, Player.transform.position, viewMask)) 
		{
			var direction = waypoints [currentWP].transform.position - Demon.transform.position;
			direction.y = 0;
			Demon.transform.rotation = Quaternion.Slerp (Demon.transform.rotation, Quaternion.LookRotation (direction), waypointRotationSpeed * Time.deltaTime);
			Demon.transform.Translate (0, 0, Time.deltaTime * waypointSpeed);
			if (direction.magnitude < demonChaseRange) // if you enter it is chase range it chases you
			{ 
				Demon.transform.Translate (0, 0, demonChaseSpeed * Time.deltaTime);
			}
		} 
		else 
		{

		}
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
