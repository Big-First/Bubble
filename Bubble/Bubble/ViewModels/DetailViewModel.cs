using System.Collections.ObjectModel;
using System.Windows.Input;
using Bubble.Models;
using Bubble.Services;
using Bubble.Singletons;

namespace Bubble.ViewModels
{
    public class DetailViewModel : ViewModelBase, IQueryAttributable
    {
        Singleton _singleton;
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

        public ICommand BackCommand => new Command(async () => await OnBack());
        public string ImageUser => Singleton.Instance().user?.Image ?? "default_image.png";
        
        public override async Task InitializeAsync(object navigationData)
        {
            if (navigationData is User user)
            {
                User = user;
                Messages = new ObservableCollection<Message>(MessageService.Instance.GetMessages(User));

                foreach (var msg in Messages)
                {
                    Console.WriteLine($"Mensagem carregada: {msg.Text}");
                }
            }

            await base.InitializeAsync(navigationData);
        }
        
        public void ApplyQueryAttributes(IDictionary<string, object> query)
        {
            if (query.ContainsKey("user"))
            {
                User = query["user"] as User;
                Console.WriteLine($"User carregada: {User == null} >> {User.Image} >> {User.Name}");
                Messages = new ObservableCollection<Message>(MessageService.Instance.GetMessages(User));
            }
        }

        async Task OnBack()
        {
            Console.WriteLine($"Mensagem carregada: {nameof(OnBack)}");
            await Shell.Current.GoToAsync("..");
        }
    }
}