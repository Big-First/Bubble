using Bubble.Models;

namespace Bubble.Singletons;

public class Singleton
{
    public static Singleton _instance;
    public User user { get; set; }

    public static Singleton Instance()
    {
        if (_instance == null)
        {
           _instance = new Singleton();
           return _instance;
        }
        return _instance;
    }
    public Singleton(){}
}