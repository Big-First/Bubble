using Bubble.Enums;

namespace Bubble.Models
{
    public class Message
    {
        public Message(){}
        public User? sender { get; set; }
        public RequestCode requestCode { get; set; }
        public ActionCode actionCode { get; set; }
        public string text { get; set; }
        public string time { get; set; }
        public bool IsOwnMessage => sender == null;

        public Message(User? sender, RequestCode requestCode, ActionCode actionCode, string text, string time)
        {
            this.sender = sender;
            this.requestCode = requestCode;
            this.actionCode = actionCode;
            this.text = text;
            this.time = time;
        }
    }
}
