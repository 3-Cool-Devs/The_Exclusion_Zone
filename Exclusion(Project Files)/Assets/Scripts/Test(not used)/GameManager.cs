using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public enum DemonState
{
    Patrol,
    Chase,
    Look,
}

public class GameManager : Singleton<GameManager>
{
    public DemonState demonstate;
    public static event Action<DemonState> OnDemonStateChange = null;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
