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
    public Vector3 demonDirection;
    public float demonAngle;
    public float demonRotation = 0.1f;
    public float demonNoticeRange = 10f;
    public float demonChaseRange = 5f;
    public float demonNoticeFOV;
    public float demonSpeed = 1.5f;
    public float demonChaseSpeed = 2f;
    public float angleBetweenDemonAndPlayer;
    //
    public float wpAccuracy = 0f;
    public Vector3 dirToPlayer;

    public int currentWP = 0;
    //
    public string state = "patrol";
    //
    public GameObject[] waypoints;
    void Awake()
    {
        dirToPlayer = (player.position - transform.position).normalized;
        originalSpotLightColour = spotLight.color;
        demonNoticeFOV =  spotLight.spotAngle;
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
        DemonFOV();
	}
    void DemonFOV()
    {
        demonDirection = player.position - this.transform.position;
        demonDirection.y = 0;
        demonAngle = Vector3.Angle(demonDirection, this.transform.forward);
        if (state == "patrol" && waypoints.Length > 0)
        {
            demonDirection.y = 0;
            if (Vector3.Distance(waypoints[currentWP].transform.position, transform.position) < wpAccuracy)
            {
                //currentWP = Random.Range(0, waypoints.Length); // randomise the waypoints that the demons follow
                currentWP++;
                if (currentWP >= waypoints.Length)
                {
                    currentWP = 0;
                }
            }
            demonDirection = waypoints[currentWP].transform.position - transform.position;
            demonDirection.y = 0;
            this.transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(demonDirection), demonRotation * Time.deltaTime);
            this.transform.Translate(0, 0, Time.deltaTime * demonSpeed);
        }
        if (Vector3.Distance(player.position, this.transform.position) < demonNoticeRange && (demonAngle < demonNoticeFOV || state == "pursuing"))
        {
            if (!Physics.Linecast(transform.position, player.position, viewMask))
            {
                state = "pursuing";
                this.transform.rotation = Quaternion.Slerp(this.transform.rotation, Quaternion.LookRotation(demonDirection), demonRotation * Time.deltaTime);
                if (demonDirection.magnitude > demonChaseRange)
                {
                    this.transform.Translate(0, 0, demonChaseSpeed * Time.deltaTime);
                }
            }
        }
        //if (angleBetweenDemonAndPlayer < demonNoticeFOV / 2f)
        //{
            //if (!Physics.Linecast(transform.position, player.position, viewMask))
            //{
                //spotLight.color = Color.red;
            //}
        //}
        else
        {
            state = "patrol";
        }
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
