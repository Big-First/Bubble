using Bubble.Models;

namespace Bubble.Services;

public class MessageService
    {
        static MessageService _instance;

        public static MessageService Instance
        {
            get
            {
                if (_instance == null)
                    _instance = new MessageService();

                return _instance;
            }
        }

        private readonly User user1 = new User("Alaya Cordova", "emoji1.png", Color.FromArgb("#FFE0EC"));
        private readonly User user2 = new User("Cecily Trujillo", "emoji2.png", Color.FromArgb("#BFE9F2"));
        private readonly User user3 = new("Eathan Sheridan", "emoji3.png", Color.FromArgb("#FFD6C4"));
        readonly User user4 = new User
        {
            name = "Komal Orr",
            image = "emoji4.png",
            color = Color.FromArgb("#C3C1E6")
        };
        readonly User user5 = new()
        {
            name = "Sariba Abood",
            image = "emoji5.png",
            color = Color.FromArgb("#FFE0EC")
        };
        readonly User user6 = new()
        {
            name = "Justin O'Moore",
            image = "emoji6.png",
            color = Color.FromArgb("#FFE5A6")
        };
        readonly User user7 = new()
        {
            name = "Alissia Shah",
            image = "emoji7.png",
            color = Color.FromArgb("#FFE0EC")
        };
        readonly User user8 = new()
        {
            name = "Antoni Whitney",
            image = "emoji8.png",
            color = Color.FromArgb("#FFE0EC")
        };
        readonly User user9 = new()
        {
            name = "Jaime Zuniga",
            image = "emoji9.png",
            color = Color.FromArgb("#C3C1E6")
        };
        readonly User user10 = new()
        {
            name = "Barbara Cherry",
            image = "emoji10.png",
            color = Color.FromArgb("#FF95A2")
        };

        public List<User> GetUsers()
        {
            return new List<User>
            {
                user1, user2, user3, user4, user5, user6, user7, user8, user9, user10
            };
        }
        public List<Message> GetChats()
        {
            return new List<Message>
            {
                new Message
                {
                  Sender = user6,
                  Time = "18:32",
                  Text = "Hey there! What\'s up? Is everything ok?",
                },
              new Message
              {
                Sender = user1,
                Time = "14:05",
                Text = "Can I call you back later?, I\'m in a meeting.",
              },
              new Message
              {
                Sender = user3,
                Time = "14:00",
                Text = "Yeah. Do you have any good song to recommend?",
              },
              new Message
              {
                Sender = user2,
                Time = "13:35",
                Text = "Hi! I went shopping today and found a nice t-shirt.",
              },
              new Message
              {
                Sender = user4,
                Time= "12:11",
                Text= "I passed you on the ride to work today, see you later.",
              },
            };
        }

        public List<Message> GetMessages(User sender)
        {
            return new List<Message> {
              new Message
              {
                Sender = null,
                Time = "18:42",
                Text = "Yeah I know. I\'m in the same position 😂",
              },
              new Message
              {
                Sender = sender,
                Time = "18:39",
                Text = "It\'s hard to be productive, man 😞",
              },
              new Message
              {
                Sender = sender,
                Time = "18:39",
                Text =
                    "Same here! Been watching YouTube for the past 5 hours despite of having so much to do! 😅",
              },
              new Message
              {
                Sender = null,
                Time = "18:36",
                Text = "Nothing. Just chilling and watching YouTube. What about you?",
              },
              new Message
              {
                Sender= sender,
                Time = "18:35",
                Text= "Hey there! What\'s up?",
              },
            };
        }
    }