using System.Net.WebSockets;
using Bubble.Controllers;
using Bubble.Enums;
using Bubble.Models;

namespace Bubble.Core;

public class Server
{
    public Server(){}
    public string userId { get; set; }
    private ClientWebSocket _clientWebSocket;
    public byte[] publicKey { get; set; }
    public byte[] privateKey { get; set; }
    public byte[] hash { get; set; }
    public Node previusNode { get; set; }
    public Node left { get; set; }
    public Node right { get; set; }

    public Server(ClientWebSocket server)
    {
        _clientWebSocket = server;
    }

    public async Task ConnectToServer(string serverUrl, CancellationToken cancellationToken = default)
    {
        if (_clientWebSocket.State == WebSocketState.Open)
        {
            Console.WriteLine("Já conectado ao servidor.");
            return;
        }
        _clientWebSocket = new ClientWebSocket();
        try
        {
            await _clientWebSocket.ConnectAsync(new Uri(serverUrl), CancellationToken.None);

            await ReceiveMessages(_clientWebSocket); // Executar em segundo plano
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Erro ao conectar ao servidor: {ex.Message}");
        }
    }

    private async Task ReceiveMessages(ClientWebSocket webSocket)
    {
        var buffer = new byte[1024 * 4];
        while (webSocket!.State == WebSocketState.Open)
        {
            WebSocketReceiveResult result = await webSocket!.ReceiveAsync(new ArraySegment<byte>(buffer), CancellationToken.None);
            ProcessReceivedBytes(buffer, result.Count);
        }
    }

    public async Task SendData(byte[] msg)
    {
        if (msg == null || _clientWebSocket.State != WebSocketState.Open)
        {
            Console.WriteLine("Falha ao enviar: WebSocket não está aberto.");
            return;
        }

        try
        {
            await _clientWebSocket.SendAsync(new ArraySegment<byte>(msg), WebSocketMessageType.Text, true, CancellationToken.None);
        }
        catch (WebSocketException e)
        {
            Console.WriteLine($"{DateTime.Now} >> {nameof(SendData)} >> Erro: {e.Message}");
        }
    }

    private void ProcessReceivedBytes(byte[] buffer, int resultCount)
    {
        byte[] receivedData = new byte[resultCount];
        Array.Copy(buffer, receivedData, resultCount);
        new ObjectSerialization().ExtractByteArrays(receivedData, OnProcessMessage);
    }

    public void OnProcessMessage(RequestCode requestCode, ActionCode actionCode, Message output)
        => new ControllerManager().HandleRequest(requestCode, actionCode, output, this);
}