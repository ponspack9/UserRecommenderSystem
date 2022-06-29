using System;
using System.Collections.Generic;
using Managers;
using UnityEngine;
using UnityEngine.UI;

public class PostMatchManager : MatchManager
{

    public void SetNewRandomUsers()
    {
        lobby_users.Clear();
        lobby_users = null;
        NavigateToScreen();
        ResetFriendsButtons();
    }

    protected override bool IsTotalStats()
    {
        return false;
    }


    protected override void InitCurrentPlayerEntries(){}

    protected override void FillUserList()
    {
        lobby_users = new List<UserRating>();
        
        List<User> usersSample = DB.GetRandomUsersSample(GameUserEntries.Length-1);
        foreach (User user in usersSample)
        {
            lobby_users.Add(new UserRating(int.Parse(user.userId), Recommender.GetUserRating(user)));
        }
    }

    protected override void FillIAUserEntries()
    {
        // Set current player
        IAUserEntry entry = IAUserEntries[0].GetComponent<IAUserEntry>();
        float rating = 0;
        
        entry.FillFields(DB.currentUser, rating);
        
        for (int i = 1; i < IAUserEntries.Length; i++)
        {
            entry = IAUserEntries[i].GetComponent<IAUserEntry>();
            rating = lobby_users[i-1].rating;
            
            entry.FillFields(DB.users[lobby_users[i-1].userId], rating);
        }
    }

    protected override void FillGameEntries()
    {
        // Set current player
        UserEntry entry = GameUserEntries[0].GetComponent<UserEntry>();
        float rating = 0;
        
        entry.FillFields(DB.currentUser.userId, rating);

        for (int i = 1; i < GameUserEntries.Length; i++)
        {
            entry = GameUserEntries[i].GetComponent<UserEntry>();
            rating = lobby_users[i-1].rating;
            
            entry.FillFields(lobby_users[i-1].userId.ToString(), rating);
        }
        
    }
}
