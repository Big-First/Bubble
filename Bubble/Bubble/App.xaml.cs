using Bubble.Views;

namespace Bubble
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            MainPage = new HomeView();
        }
    }
}