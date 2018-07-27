using UnityEngine;

public class PlayerBehaviour : MonoBehaviour 
{
	public UIBehaviour UIB;
	void OnTriggerEnter (Collider other) // function OnTriggerEnter, for if the player enters the collider of the key and it switchs the object off and turns on the variable hasKey
	{
		if (other.CompareTag("Key")) // compares the tag that the object is named key
		{
			UIB.hasKey = true;
			other.gameObject.SetActive(false);
		}
	}
}
