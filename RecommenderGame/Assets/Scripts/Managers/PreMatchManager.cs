using System.Collections.Generic;
using Managers;
using UnityEngine;
using UnityEngine.UI;

public class PreMatchManager : MatchManager
{
    public GameObject PlayerIAEntry;
    public GameObject PlayerGameEntry;
    
    public bool showOffline = true;

    // Users
    private int N_LOBBY_USERS = 100;
    private int N_REQUESTED_USERS = 5000;


    // Input
    public Toggle toggleShowOffline;
    
    private void Start()
    {
        N_LOBBY_USERS = IAUserEntries.Length * 3;
        N_REQUESTED_USERS = DB.users.Count-1;
    }

    protected override bool IsTotalStats()
    {
        return true;
    }

    #region Common lobby users list
    protected override void FillUserList()
    {
        // if (N_REQUESTED_USERS > DB.users.Count)
        // {
        //     Debug.Log("Requested users exceeds number of total users, requesting only available users");
        //     Debug.Log("Requested: " + N_REQUESTED_USERS.ToString() + " / DB: " + DB.users.Count);
        //     
        // }

        InitUsersList();
        
        for(int user_id = 0; user_id < N_REQUESTED_USERS; user_id++)
        {
            float rating = Recommender.GetUserRating(DB.users[user_id]);

            // Place in order inside the lobby users
            for (int j = 0; j < N_LOBBY_USERS; j++)
            {
                if (lobby_users[j].rating < rating)
                {
                    lobby_users.Insert(j,new UserRating(user_id,rating));
                    lobby_users.RemoveAt(N_LOBBY_USERS);
                    break;
                }
            }
        }
    }
    private void InitUsersList()
    {
        lobby_users = new List<UserRating>();
        for (int user_id = 0; user_id < N_LOBBY_USERS; user_id++)
        {
            lobby_users.Add(new UserRating(user_id, -1.0f));
        }
        
    }

    #endregion

    #region IA user entries

    protected override void FillIAUserEntries()
    {
        // Fill player entry
        PlayerIAEntry.GetComponent<IAUserEntry>().FillFields(DB.currentUser, 0);
        
        int j = 0;
        for (int i = 0; i < IAUserEntries.Length && j < lobby_users.Count;j++)
        {
            IAUserEntry entry = IAUserEntries[i].GetComponent<IAUserEntry>();
            User user = DB.users[lobby_users[j].userId];
            float rating = lobby_users[j].rating;
            
            if (showOffline || !user.offline)
            {
                entry.FillFields(user, rating);
                if (user.offline) entry.setOffline();
                else entry.setOnline();
                i++;
            }

            // if user is offline and it should not be displayed, skip user
        }
    }
    #endregion

    #region Game user entries

    protected override void InitCurrentPlayerEntries()
    {
        PlayerGameEntry.GetComponent<UserEntry>().CreateUserStats(true);
    }
    protected override void FillGameEntries()
    {
        PlayerGameEntry.GetComponent<UserEntry>().FillFields(DB.currentUser.userId, 0);
        
        int j = 0;
        for (int i = 0; i < GameUserEntries.Length && j < lobby_users.Count;j++)
        {
            UserEntry entry = GameUserEntries[i].GetComponent<UserEntry>();
            User user = DB.users[lobby_users[j].userId];
            float rating = lobby_users[j].rating;
            
            if (showOffline || !user.offline)
            {
                entry.FillFields(user.userId, rating);
                if (user.offline) entry.setOffline();
                else entry.setOnline();
                i++;
            }

            // if user is offline and it should not be displayed, skip user
        }
    }
    
    #endregion
    
    public void ToggleShowOffline(bool showOffline_)
    {
        showOffline = toggleShowOffline.isOn;
        FillEntries();
        
    }
    
}
