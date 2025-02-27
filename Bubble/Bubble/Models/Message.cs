using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bubble.Models
{
    public class Message
    {
        public Message() { }
        public User Sender { get; set; }
        public string Text { get; set; }
        public string Time { get; set; }

        public Message(User sender, string text, string time)
        {
            Sender = sender;
            Text = text;
            Time = time;
        }
    }
}
