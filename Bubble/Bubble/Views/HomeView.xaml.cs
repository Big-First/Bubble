using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bubble.Views;

public partial class HomeView : ContentPage
{
    public HomeView()
    {
        InitializeComponent();
        NavigationPage.SetHasNavigationBar(this, false);
    }
}