using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEditor;
using UnityEngine;

public class UserEntry : MonoBehaviour
{
    private List<TMP_Text> fields;

    private UserStats stats;

    public string pendingRequest = "";
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
        
        int n_childs = transform.childCount;
        
        for (int i = 0; i < n_childs-1; i++)
        {
            fields.Add(transform.GetChild(i).GetComponent<TMP_Text>());
        }
    }

    public void CreateUserStats(bool total_stats)
    {
        if (stats != null) return;
        
        stats = new UserStats(
            0,
            DB.random.Next(20*((total_stats)?1000:1)),
            DB.random.Next(20*((total_stats)?1000:1)),
            DB.random.Next(1000*((total_stats)?1000:1)),
            DB.random.Next(100*((total_stats)?1000:1)),
            0f
            );
    }
    public void FillFields(string id, float rating)
    {
        SetUserEntryField("name",  "[" + id + "] " + DB.GetName(int.Parse(id))+ pendingRequest);
        SetUserEntryField("kills", stats.kills.ToString());
        SetUserEntryField("deaths",stats.deaths.ToString());
        SetUserEntryField("money", stats.money.ToString());
        SetUserEntryField("stats", stats.score.ToString());
        SetUserEntryField("rating", (DB.currentUser.userId == id)? "-" :rating.ToString("F"));
    }

    void SetUserEntryField(string field, string value)
    {
        transform.Find(field).GetComponent<TMP_Text>().SetText(value);
    }
}
