namespace Bubble.Models
{
    public class Message
    {
        public Message(){}
        public User? Sender { get; set; }
        public string Text { get; set; }
        public string Time { get; set; }
        public bool IsOwnMessage => Sender == null;
        public Message(User? sender, string text, string time)
        {
            Sender = sender;
            Text = text;
            Time = time;
        }
    }
}
