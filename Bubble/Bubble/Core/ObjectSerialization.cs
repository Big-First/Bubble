using System.Text.Json;
using Bubble.Enums;
using Bubble.Models;

namespace Bubble.Core;

public class ObjectSerialization
{
    public ObjectSerialization(){}
    public  byte[] Serialize(Message request)
    {
        byte[] bytes = JsonSerializer.SerializeToUtf8Bytes(request);
        return bytes;
    }

    public void ExtractByteArrays(byte[] receivedData, Action<RequestCode, ActionCode, Message> onProcessMessage)
    {
        Message objDeserializado = null;
        objDeserializado = JsonSerializer.Deserialize<Message>(receivedData);
        onProcessMessage(objDeserializado.requestCode, objDeserializado.actionCode, objDeserializado);
    }
}