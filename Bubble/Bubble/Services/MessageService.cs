﻿using Bubble.Models;

namespace Bubble.Services
{
    public class MessageService
    {
        static MessageService _instance;

        public static MessageService Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new MessageService();
                    return _instance;
                }

                return _instance;
            }
            
        }

        readonly User user1 = new User
        {
            Name = "Alaya Cordova",
            Image = "emoji1.png",
            Color = Color.FromArgb("#FFE0EC")
        };
        readonly User user2 = new()
        {
            Name = "Cecily Trujillo",
            Image = "emoji2.png",
            Color = Color.FromArgb("#BFE9F2")
        };
        readonly User user3 = new()
        {
            Name = "Eathan Sheridan",
            Image = "emoji3.png",
            Color = Color.FromArgb("#FFD6C4")
        };
        readonly User user4 = new()
        {
            Name = "Komal Orr",
            Image = "emoji4.png",
            Color = Color.FromArgb("#C3C1E6")
        };
        readonly User user5 = new()
        {
            Name = "Sariba Abood",
            Image = "emoji5.png",
            Color = Color.FromArgb("#FFE0EC")
        };
        readonly User user6 = new()
        {
            Name = "Justin O'Moore",
            Image = "emoji6.png",
            Color = Color.FromArgb("#FFE5A6")
        };
        readonly User user7 = new()
        {
            Name = "Alissia Shah",
            Image = "emoji7.png",
            Color = Color.FromArgb("#FFE0EC")
        };
        readonly User user8 = new()
        {
            Name = "Antoni Whitney",
            Image = "emoji8.png",
            Color = Color.FromArgb("#FFE0EC")
        };
        readonly User user9 = new()
        {
            Name = "Jaime Zuniga",
            Image = "emoji9.png",
            Color = Color.FromArgb("#C3C1E6")
        };
        readonly User user10 = new()
        {
            Name = "Barbara Cherry",
            Image = "emoji10.png",
            Color = Color.FromArgb("#FF95A2")
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
                  sender = user6,
                  time = "18:32",
                  text = "Hey there! What\'s up? Is everything ok?",
                },
              new Message
              {
                sender = user1,
                time = "14:05",
                text = "Can I call you back later?, I\'m in a meeting.",
              },
              new Message
              {
                sender = user3,
                time = "14:00",
                text = "Yeah. Do you have any good song to recommend?",
              },
              new Message
              {
                sender = user2,
                time = "13:35",
                text = "Hi! I went shopping today and found a nice t-shirt.",
              },
              new Message
              {
                sender = user4,
                time= "12:11",
                text= "I passed you on the ride to work today, see you later.",
              },
            };
        }

        public List<Message> GetMessages(User sender)
        {
            return new List<Message> {
              new Message
              {
                sender = null,
                time = "18:42",
                text = "Yeah I know. I\'m in the same position 😂",
              },
              new Message
              {
                sender = sender,
                time = "18:39",
                text = "It\'s hard to be productive, man 😞",
              },
              new Message
              {
                sender = sender,
                time = "18:39",
                text =
                    "Same here! Been watching YouTube for the past 5 hours despite of having so much to do! 😅",
              },
              new Message
              {
                sender = null,
                time = "18:36",
                text = "Nothing. Just chilling and watching YouTube. What about you?",
              },
              new Message
              {
                sender= sender,
                time = "18:35",
                text= "Hey there! What\'s up?",
              },
            };
        }
    }
}