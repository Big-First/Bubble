using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bubble.Models
{
    public class User
    {
        public User() { }
        public string Name { get; set; }
        public string Image { get; set; }
        public Color Color { get; set; }

        public User(string name, string image, Color color)
        {
            Name = name;
            Image = image;
            Color = color;
        }
    }
}
