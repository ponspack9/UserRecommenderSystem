using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class disablebutton : MonoBehaviour
{
    public void DisableButton()
    {
        GetComponent<Button>().interactable = false;
        TMP_Text text = transform.parent.Find("name").GetComponent<TMP_Text>();
        text.SetText(text.text + " - Pending friend request");
    }

}
