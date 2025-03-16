using System.Collections.ObjectModel;
using System.Windows.Input;
using Bubble.Models;
using Bubble.Services;

namespace Bubble.ViewModels
{
    public class DetailViewModel : ViewModelBase
    {
        User _user;
        ObservableCollection<Message> _messages;

        public User User
        {
            get { return _user; }
            set
            {
                _user = value;
                OnPropertyChanged();
            }
        }
        
        public DetailViewModel()
        {
            Messages = new ObservableCollection<Message>
            {
                new Message { Sender = null,Text = "Olá!", Time = DateTime.UtcNow.ToString()},
                new Message { Sender = null,Text = "Tudo bem?", Time = DateTime.UtcNow.ToString() }
            };
            foreach (var msg in Messages)
            {
                Console.WriteLine($"Mensagem carregada: {msg.Text}");
            }
        }

        public ObservableCollection<Message> Messages
        {
            get { return _messages; }
            set
            {
                _messages = value;
                OnPropertyChanged();
            }
        }

        public ICommand BackCommand => new Command(OnBack);

        public override Task InitializeAsync(object navigationData)
        {
            if (navigationData is Message message)
            {
                User = message.Sender;
                Messages = new ObservableCollection<Message>(MessageService.Instance.GetMessages(User));
            }

            return base.InitializeAsync(navigationData);
        }

        void OnBack()
        {
            NavigationService.Instance.NavigateBackAsync();
        }
    }
}