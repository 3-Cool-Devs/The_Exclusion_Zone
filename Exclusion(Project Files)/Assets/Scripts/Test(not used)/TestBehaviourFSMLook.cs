using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestBehaviourFSMLook : TestBehaviourBase
{

	 // OnStateEnter is called when a transition starts and the state machine starts to evaluate this state
	override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
		base.OnStateEnter (animator, stateInfo, layerIndex);
	}

	// OnStateUpdate is called on each Update frame between OnStateEnter and OnStateExit callbacks
	override public void OnStateUpdate(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) 
    {
        TDB.Demon.transform.Rotate(0, 45 * Time.deltaTime, 0);
        //TDB.Demon.transform.Rotate(0, -45 * Time.deltaTime, 0);
        if (Vector3.Distance(Player.transform.position, Demon.transform.position) < demonNoticeRange && angle < demonNoticeFOV && !Physics.Linecast(Demon.transform.position, Player.transform.position, viewMask))
        {
            TDB.anim.SetBool("doesSee", true);
            TDB.uiBehav.hasBeenSpotted = true;
            TDB.isLooking = false;
        }
    }

	// OnStateExit is called when a transition ends and the state machine finishes evaluating this state
	override public void OnStateExit(Animator animator, AnimatorStateInfo stateInfo, int layerIndex) 
    {
		currentWP = FindClosestWP();
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
