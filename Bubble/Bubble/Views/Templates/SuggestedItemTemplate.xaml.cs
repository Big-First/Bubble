using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Maui.Controls;
using Bubble.Models;
using Bubble.ViewModels;

namespace Bubble.Views.Templates;

public partial class SuggestedItemTemplate : ContentView
{
    public SuggestedItemTemplate()
    {
        InitializeComponent();
    }
    
    void OnTestTapped(object sender, EventArgs e)
    {
        if (BindingContext is Message chatItem)
        {
            Console.WriteLine($"OnTestTapped >> Navigating to chat with {chatItem.Sender.Name}");
        }
    }
}