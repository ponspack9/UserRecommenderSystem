using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class IAUserEntry : MonoBehaviour
{
    private List<TMP_Text> fields;

    public void setOffline()
    {
        foreach (TMP_Text field in fields)
        {
            field.alpha = 0.25f;
        }
    }

    public void setOnline()
    {
        foreach (TMP_Text field in fields)
        {
            field.alpha = 1f;
        }
    }
    void Start()
    {
        fields = new List<TMP_Text>();
        
        Transform values = transform.Find("Values");
        int n_childs = values.childCount;
        
        for (int i = 0; i < n_childs-1; i++)
        {
            fields.Add(values.GetChild(i).GetComponent<TMP_Text>());
        }
    }
    
    public void FillFields(User user, float rating)
    {
        FillIAUserEntryField("id", user.userId);
        FillIAUserEntryField("age", user.age);
        FillIAUserEntryField("gender", user.gender);
        FillIAUserEntryField("language", user.language);
        FillIAUserEntryField("loginTime", user.login_time);
        FillIAUserEntryField("character", user.character);
        FillIAUserEntryField("cType", user.c_type);
        FillIAUserEntryField("mode", user.mode);
        FillIAUserEntryField("ranking", user.ranking);
        FillIAUserEntryField("rating", (DB.currentUser.userId == user.userId)? "-" : rating.ToString("F"));
    }

    private void FillIAUserEntryField(string field, string value)
    {
        transform.Find("Values").Find(field).GetComponent<TMP_Text>().SetText(value);
    }
    
}
