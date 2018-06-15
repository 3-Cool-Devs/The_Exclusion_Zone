using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestBehaviourBase : StateMachineBehaviour
{
    public GameObject Demon;
    public GameObject Player;
    public Animator anim;
    public float waypointRange = 3.0f;
    public float waypointRotationSpeed = 1.0f;
    public float waypointSpeed = 2.0f;
    override public void OnStateEnter(Animator animator, AnimatorStateInfo stateInfo, int layerIndex)
    {
        Demon = animator.gameObject;
        Player = Demon.GetComponent<DemonAI>().GetPlayer();
        currentWP = 0;
    }
    void Start () // Use this for initialization
    {
		
	}
	void Update () // Update is called once per frame
    {
		
	}
}
