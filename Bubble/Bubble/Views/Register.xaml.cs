using System.Security.Cryptography;
using System.Text;
using Bubble.Models;
using Bubble.Repositorys;

namespace Bubble.Views;

public partial class Register : ContentPage
{
    public Register()
    {
        InitializeComponent();
    }
    
    private void OnCounterClicked(object sender, EventArgs e)
    {
        string email = EntryEmail.Text;
        string password = EntryPassword.Text;
        string rePassword = EntryRePassword.Text;
        
        if (password == rePassword)
        {
            var user = new UserRegister(Guid.NewGuid().ToString(), email, ComputeSha256Hash(password));
            AccountRegister(user);
        }
    }

    private async void AccountRegister(UserRegister userRegister)
    {
        var response = await new PureTalkRepository().CreateAccount(userRegister);
        if (response == "200") DisplayAlert("Dados","Conta Registrada com Sucesso !", "OK");
    }

    string ComputeSha256Hash(string rawData)
    {
        string p = "";
        for (int i = 0; i < rawData.Length; i++)
        {
            using (MD5 md5Hash = MD5.Create())
            {
                byte[] bytes = md5Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData[i].ToString()));
                StringBuilder builder = new StringBuilder();
                for (int x = 0; x < bytes.Length; x++)
                {
                    builder.Append(bytes[x].ToString("x2"));
                }
                p += builder.ToString();
            }
        }
        return p;
    }
}