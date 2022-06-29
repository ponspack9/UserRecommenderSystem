using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Managers
{
    public abstract class MatchManager : MonoBehaviour
    {
        // Entries
        public GameObject[] IAUserEntries;
        public GameObject[] GameUserEntries;
        
        protected List<UserRating> lobby_users;
        
        public void NavigateToScreen()
        {
            if (lobby_users == null)
            {
                FillUserList();
                InitUserEntries();
                FillEntries();
            }
        }
        protected void FillEntries()
        {
            FillIAUserEntries();
            FillGameEntries();
        }

        private void InitUserEntries()
        {
            InitCurrentPlayerEntries();
            foreach (GameObject userEntry in GameUserEntries)
            {
                userEntry.GetComponent<UserEntry>().CreateUserStats(IsTotalStats());
            }
        }

        public void ResetFriendsButtons()
        {
            foreach (GameObject entry in GameUserEntries)
            {
                entry.transform.Find("add").GetComponent<Button>().interactable = true;
            }
        }

        protected abstract void InitCurrentPlayerEntries();
        protected abstract void FillUserList();

        protected abstract void FillIAUserEntries();
        protected abstract void FillGameEntries();

        protected abstract bool IsTotalStats();
    }
}