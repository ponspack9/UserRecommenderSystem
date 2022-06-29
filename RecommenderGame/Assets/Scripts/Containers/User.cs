public class User
{
    public string userId;
    public string age;
    public string gender;
    public string language;
    public string login_time;
    public string character;
    public string c_type;
    public string mode;
    public string ranking;
    public bool offline = false;
}

public class UserRating
{
    public int userId;
    public float rating;
    public UserRating(int id, float rating)
    {
        this.userId = id;
        this.rating = rating;
    }

}

public class UserStats
{    
    public int userId;
    public int kills;
    public int deaths;
    public int money;
    public int score;
    public float rating;
    
    public UserStats(int userId, int kills, int deaths, int money, int score, float rating)
    {
        this.userId = userId;
        this.kills = kills;
        this.deaths = deaths;
        this.money = money;
        this.score = score;
        this.rating = rating;
    }


}