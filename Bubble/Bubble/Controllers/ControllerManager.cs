using Bubble.Core;
using Bubble.Enums;
using Bubble.Models;

namespace Bubble.Controllers;

public class ControllerManager
{
    public ControllerManager(){}

    public void HandleRequest(RequestCode requestCode, ActionCode actionCode, Message output, Server server)
    {
        if (requestCode == RequestCode.None) return;
        if (requestCode == RequestCode.Text) new TextController().OnAction(actionCode, output);
        if (requestCode == RequestCode.Video) new VideoController().OnAction(actionCode, output);
        if (requestCode == RequestCode.Audio) new AudioController().OnAction(actionCode, output);
    }
}