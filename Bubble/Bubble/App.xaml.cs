using System.Net.WebSockets;
using Bubble.Core;
using Bubble.Views;

namespace Bubble
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            MainPage = new Register();
            //Task.Run(() => ConnectServer());
        }

        async Task ConnectServer()
        {
            //Server server = new ();
            //await server.ConnectToServer("ws://10.0.2.2:5107/chat", CancellationToken.None);
            //await Task.CompletedTask;
        }
    }
}