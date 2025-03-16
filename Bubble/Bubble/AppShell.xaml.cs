using Bubble.Views;

namespace Bubble;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();
        Routing.RegisterRoute("detail", typeof(DetailView));
        NavigationPage.SetHasNavigationBar(this, false);
    }
}