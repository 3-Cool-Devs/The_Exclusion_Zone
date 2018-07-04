using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestBehaviour : MonoBehaviour 
{
	public GameObject[] waypoints;
	float rotSpeed = 0.8f;
	float speed = 3f;
	float accuarcyWP = 2.0f;
	int currentWP = 0;
	List<Transform> path = new List<Transform>();
	void Start () // Use this for initialization
	{
		foreach (GameObject go in waypoints) 
		{
			path.Add (go.transform);
		}
		currentWP = FindClosestWP();
	}
	int FindClosestWP()
	{
		if (waypoints.Length == 0) 
		{
			return -1;
		}
		int closest = 0;
		float lastDist = Vector3.Distance (this.transform.position, path [0].position);
		for (int i = 1; i < path.Count; i++) 
		{
			float thisDist = Vector3.Distance (this.transform.position, path [i].position);
			if (lastDist > thisDist && i != currentWP)
			{
				closest = i;
			}
		}
		return closest;
	}
	public void Patrol()
	{
		Vector3 direction = path [currentWP].position - transform.position;
		this.transform.rotation = Quaternion.Slerp (transform.rotation, Quaternion.LookRotation (direction), rotSpeed * Time.deltaTime);
		this.transform.Translate (0, 0, Time.deltaTime * speed);
		if (direction.magnitude < accuarcyWP) 
		{
			path.Remove (path [currentWP]);
			currentWP = FindClosestWP();
		}
	}
	void Update () // Update is called once per frame
	{
		Patrol ();
	}
}
