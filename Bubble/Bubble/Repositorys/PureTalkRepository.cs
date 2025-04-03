using System.Text;
using System.Text.Json;
using Bubble.Models;

namespace Bubble.Repositorys;

public class PureTalkRepository
{
    public PureTalkRepository(){}
    public async Task<string?> CreateAccount(UserRegister _user)
    {
        string url = "http://10.0.2.2:5000/Register";
        object? user = _user;
        using (HttpClientHandler handler = new HttpClientHandler())
        {
            handler.ServerCertificateCustomValidationCallback = (message, cert, chain, errors) => { return true; };
            using (HttpClient client = new HttpClient(handler))
            {
                try
                {
                    string json = JsonSerializer.Serialize(user);
                    StringContent content = new StringContent(json, Encoding.UTF8, "application/json");
                    HttpResponseMessage response = await client.PostAsync(url, content);
                    response.EnsureSuccessStatusCode();
                    string responseBody = await response.Content.ReadAsStringAsync();
                    return responseBody;
                    
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Error No Data: {ex.Message}");
                }
            }
        }

        return "";
    }
}