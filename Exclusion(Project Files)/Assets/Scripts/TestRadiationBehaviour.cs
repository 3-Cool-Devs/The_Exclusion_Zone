using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class TestRadiationBehaviour : MonoBehaviour
{
    public TestDemonBehaviour DB;
    public UIBehaviour UI;
    public float radiationDamage = 1f;
    void Start () // Use this for initialization
    {
		
	}
	void Update () // Update is called once per frame
    {

    }
    void OnTriggerStay(Collider other) // function OnTriggerEnter, for if the player enters the collider of the key and it switchs the object off and turns on the variable hasKey
    {
        if (other.CompareTag("Player")) // compares the tag that the object is named key
        {
            UI.health -= radiationDamage * Time.deltaTime;
        }
    }
}
