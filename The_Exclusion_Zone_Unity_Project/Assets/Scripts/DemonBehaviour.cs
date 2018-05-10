using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DemonBehaviour : MonoBehaviour
{
    public Transform player;
    public Transform head;
    public Transform pathHolder;
    public LayerMask viewMask;
    //
    public Light spotLight;
    private Color originalSpotLightColour;
    //
	private Vector3 direction;
	public Vector3 lastSighting;
	private float angle;
    public float demonRotation = 0.1f;
    public float demonNoticeRange = 10f;
    public float demonChaseRange = 5f;
    public float demonNoticeFOV;
    public float demonSpeed = 1.5f;
    public float demonChaseSpeed = 2f;
	private float angleBetweenDemonAndPlayer;
    //
    public float wpAccuracy = 0f;
    public int currentWP = 0;
    //
    public bool isChasing = false;
	public bool isLooking = false;
    public bool isPatroling = true;
    public bool hasChased = false;
    //
    public GameObject[] waypoints;
    public UIBehaviour uiBehav;
    void Awake()
    {
        originalSpotLightColour = spotLight.color;
    }
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
    public void DemonPatrol()
    {
        direction = player.position - this.transform.position; // distance between the player and the demon
        direction.y = 0; 
        angle = Vector3.Angle(direction, this.transform.forward); // The angle
		if (Vector3.Distance(waypoints[currentWP].transform.position, transform.position) > wpAccuracy && hasChased == true)
        {
            currentWP = FindClosestWP();
            hasChased = false;
        }
        if (isPatroling == true && waypoints.Length > 0)
        {
            direction.y = 0;
            if (Vector3.Distance(waypoints[currentWP].transform.position, transform.position) < wpAccuracy)
            {
                //currentWP = Random.Range(0, waypoints.Length); // randomise the waypoints that the demons follow
                currentWP++;
                if (currentWP >= waypoints.Length)
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
	public void DemonChase ()
	{
		Vector3 direction = player.position - this.transform.position;
		direction.y = 0;
		if (Vector3.Distance(player.position, this.transform.position) < demonNoticeRange && angle < demonNoticeFOV && !Physics.Linecast(transform.position, player.position, viewMask)) //|| isChasing == true)
        {
            isPatroling = false;
            isChasing = true;
            uiBehav.hasBeenSpotted = true;
			this.transform.rotation = Quaternion.Slerp(this.transform.rotation, Quaternion.LookRotation(direction), demonRotation * Time.deltaTime);
			if(direction.magnitude > demonChaseRange)
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
	public int FindClosestWP()
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
    void OnDrawGizmos()
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
