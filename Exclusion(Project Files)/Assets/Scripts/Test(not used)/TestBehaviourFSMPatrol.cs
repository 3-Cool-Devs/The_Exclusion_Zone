using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestBehaviourFSMPatrol : TestBehaviourBase
{
    // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) 
    {
		base.OnStateEnter (animator, stateInfo, layerIndex);
		Demon = animator.gameObject;
    }
    // OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
    override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) 
    {
        if (waypoints.Length == 0) 
        {
            return;
        }
		if (Vector3.Distance (waypoints [currentWP].transform.position, Demon.transform.position) < waypointRange) 
        {
			//Vector3 startPosition = pathHolder.GetChild(0).position;
			//Vector3 previousPosition = startPosition;
            currentWP++;
            if(currentWP >= waypoints.Length)
            {
                currentWP = 0;
            }
        }
        myAgent.SetDestination (waypoints [currentWP].transform.position); //or use this if on a navmesh
		//var direction = waypoints [currentWP].transform.position - Demon.transform.position;
        //direction.y = 0;
		//Demon.transform.rotation = Quaternion.Slerp (Demon.transform.rotation, Quaternion.LookRotation (direction), waypointRotationSpeed * Time.deltaTime);
		//Demon.transform.Translate (0, 0, Time.deltaTime * waypointSpeed);
    }

    // OnStateExit is called when a transition ends and the state machine finishes evaluating this state
    override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
		
    }

    // OnStateMove is called right after Animator.OnAnimatorMove(). Code that processes and affects root motion should be implemented here
    //override public void OnStateMove(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) 
    //{
    //
    //}

    // OnStateIK is called right after Animator.OnAnimatorIK(). Code that sets up animation IK (inverse kinematics) should be implemented here.
    //override public void OnStateIK(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) 
    //{
    //
    //}
}
