using UnityEngine;
using UnityEngine.SceneManagement;

public class resetgame : MonoBehaviour
{
	void Start () // Use this for initialization
    {
		
	}
	
	void Update () // Update is called once per frame
    {
        ResetGame();
	}
    void ResetGame()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene("Level_1");
        }
    }
}
