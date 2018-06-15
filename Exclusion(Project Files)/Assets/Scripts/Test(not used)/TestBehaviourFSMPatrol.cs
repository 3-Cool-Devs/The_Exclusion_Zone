using System.Collections;
using System.Collections.Generic;
using UnityEngine.AI;
using UnityEngine.Animations;
using UnityEngine;

public class TestBehaviourFSMPatrol : StateMachineBehaviour
{
    //private NavMeshAgent myAgent;
    
    //
   
    public GameObject[] waypoints;
    
    public int currentWP;
    private float angle;
    public float demonRotation = 0.1f;
    public float demonNoticeRange = 10f;
    public float demonChaseRange = 5f;
    public float demonNoticeFOV;
    public float demonSpeed = 1.5f;
    public float demonChaseSpeed = 2f;
    public float demonDamage = 5f;
    private float angleBetweenDemonAndPlayer;
    public UIBehaviour uiBehav;
    public LayerMask viewMask;
    private void Awake()
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
        anim = GetComponent<Animator>();
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
        //myAgent.SetDestination (waypoints [currentWP].transform.position); //or use this if on a navmesh
        var direction = waypoints [currentWP].transform.position - NPC.transform.position;
        direction.y = 0;
        NPC.transform.rotation = Quaternion.Slerp (NPC.transform.rotation, Quaternion.LookRotation (direction), waypointRotationSpeed * Time.deltaTime);
        NPC.transform.Translate (0, 0, Time.deltaTime * waypointSpeed);
        if (Vector3.Distance(target.position, NPC.transform.position) < demonNoticeRange && angle < demonNoticeFOV && !Physics.Linecast(NPC.transform.position, target.position, viewMask)) //|| isChasing == true)
        {
            uiBehav.hasBeenSpotted = true;
            NPC.transform.rotation = Quaternion.Slerp(NPC.transform.rotation, Quaternion.LookRotation(direction), demonRotation * Time.deltaTime);
            if (direction.magnitude < demonChaseRange) // if you enter it is chase range it chases you
            {
                anim.doesSee = true;
                NPC.transform.Translate(0, 0, demonChaseSpeed * Time.deltaTime);
            }
        }
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
