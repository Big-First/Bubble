using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bubble.Views;

public partial class Register : ContentPage
{
    int count = 0;
    public Register()
    {
        InitializeComponent();
    }
    
    private void OnCounterClicked(object sender, EventArgs e)
    {
        string email = EntryEmail.Text;
        string password = EntryPassword.Text;
        string rePassword = EntryRePassword.Text;
        count++;
        
        DisplayAlert("Dados", $"Email: {email}\nSenha: {password}\nRe-Senha: {rePassword}", "OK");
        
    }
}