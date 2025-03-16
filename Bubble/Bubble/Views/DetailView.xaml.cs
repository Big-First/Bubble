using Bubble.ViewModels;

namespace Bubble.Views;

[QueryProperty("Parameter", "parameter")]
public partial class DetailView : ContentPage
{
    public string Parameter { get; set; }

    public DetailView()
    {
        InitializeComponent();
        NavigationPage.SetHasNavigationBar(this, false);
    }
}