namespace Bubble.Models;

public class User
{
    public User(){}
    public string name { get; set; }
    public string image { get; set; }
    public Color color { get; set; }

    public User(string name, string image, Color color)
    {
        this.name = name;
        this.image = image;
        this.color = color;
    }
}