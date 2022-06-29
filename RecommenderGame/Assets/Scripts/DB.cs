using System.Collections.Generic;
using UnityEngine;

public class DB : MonoBehaviour
{
    public static List<User> users;
    public static List<string> male_names;
    public static List<string> female_names;
    public static readonly System.Random random = new System.Random();

    public static User currentUser;
    private void Start()
    {
        ReadUsersFile();
        ReadNamesFiles();
        currentUser = users[72];
    }

    private static void ReadUsersFile()
    {
        users = new List<User>();

        string path = "DB/users";
        var reader = Resources.Load<TextAsset>(path);
        var lines = reader.ToString().Split('\n');
        for (int i = 1; i < lines.Length-1; i++)
        {
            string[] entries = lines[i].Split(',');
            User user = new User();
            user.userId = entries[0];
            user.age = entries[1];
            user.gender = entries[2];
            user.language = entries[3];
            user.login_time = entries[4];
            user.character = entries[5];
            user.c_type = entries[6];
            user.mode = entries[7];
            user.ranking = entries[8];
            user.offline = (i % 3 == 0);
            
            users.Add(user);
        }
    }
    private static void ReadNamesFiles()
    {
        male_names = new List<string>();

        string path = "DB/names_male";
        var reader = Resources.Load<TextAsset>(path);
        var lines = reader.ToString().Split('\n');
        
        male_names.AddRange(lines);
        male_names.RemoveAt(male_names.Count - 1);
        
        female_names = new List<string>();
        path = "DB/names_female";
        reader = Resources.Load<TextAsset>(path);
        lines = reader.ToString().Split('\n');
        
        female_names.AddRange(lines);
        female_names.RemoveAt(female_names.Count-1);
        
    }
    public static List<User> GetRandomUsersSample(int number)
    {
        List<User> sample = new List<User>();
        for (int i = 0; i < number; i++)
        {
            sample.Add(users[random.Next(users.Count)]);
        }

        return sample;
    }

    public static string GetName(int id)
    {
        if (users[id].gender.Equals("Male")) return GetMaleName(id);
        return GetFemaleName(id);
    }
    private static string GetMaleName(int id)
    {
        return male_names[id%male_names.Count];
    }

    private static string GetFemaleName(int id)
    {
        return female_names[id%female_names.Count];
    }

}
