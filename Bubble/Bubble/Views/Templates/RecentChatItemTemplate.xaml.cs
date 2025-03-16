using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bubble.Models;
using Bubble.Services;
using Bubble.ViewModels;

namespace Bubble.Views.Templates;

public partial class RecentChatItemTemplate : ContentView
{
    public RecentChatItemTemplate()
    {
        InitializeComponent();
    }
    
    private void OnTestTapped(object sender, EventArgs e)
    {
        var chatItem = (sender as Grid)?.BindingContext as Message;

        // Aqui estamos acessando o BindingContext da página principal
        var homeViewModel = (Application.Current.MainPage.BindingContext as HomeViewModel);

        Console.WriteLine($"OnTestTapped >> homeViewModel is null: {homeViewModel == null}, chatItem is null: {chatItem == null}");

        if (homeViewModel != null && chatItem != null)
        {
            homeViewModel.OnNavigate(chatItem);
        }
    }
}