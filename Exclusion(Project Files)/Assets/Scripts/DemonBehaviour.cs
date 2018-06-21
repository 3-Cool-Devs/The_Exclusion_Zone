using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DemonBehaviour : MonoBehaviour
{
    public Transform player;
    public Transform head;
    public Transform pathHolder;
    public LayerMask viewMask;
    //variables that the demons uses to be aware of the players position
    public Light spotLight;
    private Color originalSpotLightColour;
    // variables the controlls the demons behaviour
	private Vector3 direction;
	public Vector3 lastSighting;
	private float angle;
    public float demonRotation = 0.1f;
    public float demonNoticeRange = 10f;
    public float demonChaseRange = 5f;
    public float demonNoticeFOV;
    public float demonSpeed = 1.5f;
    public float demonChaseSpeed = 2f;
	public float demonDamage = 5f;
	private float angleBetweenDemonAndPlayer;
    // variables that the waypoints uses
    public float wpAccuracy = 0f;
	public GameObject[] waypoints;
    public int currentWP = 0;
    // variables that toggle demon behaviour
    public bool isChasing = false;
	public bool isLooking = false;
    public bool isPatroling = true;
    public bool hasChased = false;
    // refreneces to other scripts
    public UIBehaviour uiBehav;
    void Start () // Use this for initialization
    {
        Vector3[] waypoints = new Vector3[pathHolder.childCount];
        for (int i = 0; i < waypoints.Length; i++)
        {
            waypoints[i] = pathHolder.GetChild(i).position;
            waypoints[i] = new Vector3(waypoints[i].x, transform.position.y, waypoints[i].z);
        }
    }
	void Update () // Update is called once per frame
    {
        DemonPatrol();
		DemonChase ();
	}
    public void DemonPatrol() // the demons patrols using a predetermined path
    {
        direction = player.position - this.transform.position; // distance between the player and the demon
        direction.y = 0; 
        angle = Vector3.Angle(direction, this.transform.forward); // The angle
		if (Vector3.Distance(waypoints[currentWP].transform.position, transform.position) > wpAccuracy && hasChased == true) // if the waypoint is greater that the waypoint accracy and if the bool hasChased == true it searchs for the nearest waypoint
        {
            currentWP = FindClosestWP();
            hasChased = false; // turns off so it only uses it once 
        }
        if (isPatroling == true && waypoints.Length > 0) // the partoling code that moves the demons to the different waypoints
        {
            direction.y = 0;
            if (Vector3.Distance(waypoints[currentWP].transform.position, transform.position) < wpAccuracy)
            {
                //currentWP = Random.Range(0, waypoints.Length); // randomise the waypoints that the demons follow
                currentWP++;
                if (currentWP >= waypoints.Length) // restarts the waypoint array if the currentWP is greater than the elements of the array
                {
                    currentWP = 0;
                }
            }
            direction = waypoints[currentWP].transform.position - transform.position;
            direction.y = 0;
            this.transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(direction), demonRotation * Time.deltaTime);
            this.transform.Translate(0, 0, Time.deltaTime * demonSpeed);
        }
    }
	public void DemonChase () // if the player is in range of the demon and in it's FOV and if not behind an obsticale it looks at you
	{
		Vector3 direction = player.position - this.transform.position;
		direction.y = 0;
		if (Vector3.Distance(player.position, this.transform.position) < demonNoticeRange && angle < demonNoticeFOV && !Physics.Linecast(transform.position, player.position, viewMask)) //|| isChasing == true)
        {
            isPatroling = false;
            isChasing = true;
            uiBehav.hasBeenSpotted = true;
			this.transform.rotation = Quaternion.Slerp(this.transform.rotation, Quaternion.LookRotation(direction), demonRotation * Time.deltaTime);
			if(direction.magnitude < demonChaseRange) // if you enter it is chase range it chases you
			{
				hasChased = true;
				this.transform.Translate(0, 0, demonChaseSpeed * Time.deltaTime);
			}
        }
		//if (Vector3.Distance(player.position, this.transform.position) > demonNoticeRange && (angle > demonNoticeFOV) && !Physics.Linecast(transform.position, player.position, viewMask) || isChasing == true)
		//{
			//isChasing = false;
			
			//uiBehav.hasBeenSpotted = false;
			//StartCoroutine (ContinueChase());
		//}
		else
		{
			isPatroling = true;
			isChasing = false;
			uiBehav.hasBeenSpotted = false;
		}
	}
	public int FindClosestWP() // the code finds the closest waypoint
	{
		if (waypoints.Length == 0) 
		{
			return -1;
		}
		int closest = 0;
		float lastDist = Vector3.Distance(this.transform.position, waypoints[currentWP].transform.position);
		for(int i = 1; i < waypoints.Length; i++)
		{
			float thisDist = Vector3.Distance(this.transform.position, waypoints[i].transform.position);
			if(lastDist > thisDist && i != currentWP)
			{
				closest = i;
			}
		}
		return closest;
	} 
    void OnDrawGizmos() // draws the spheres in the editors so we have a better idea of the path of the demon
    {
        Vector3 startPosition = pathHolder.GetChild(0).position;
        Vector3 previousPosition = startPosition;
        foreach (Transform waypoint in pathHolder)
        {
            Gizmos.DrawSphere(waypoint.position, .3f);
            Gizmos.DrawLine(previousPosition, waypoint.position);
            previousPosition = waypoint.position;
        }
        Gizmos.DrawLine(previousPosition, startPosition);
        Gizmos.DrawRay(transform.position, transform.forward * demonNoticeRange);
    }
}
