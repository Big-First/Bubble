using System.Collections.ObjectModel;
using System.Windows.Input;
using Bubble.Models;
using Bubble.Services;
using Bubble.Singletons;
using Bubble.Views;

namespace Bubble.ViewModels
{
    public class HomeViewModel : ViewModelBase
    {
        Singleton _singleton;
        private ObservableCollection<User> _users;
        private ObservableCollection<Message> _recentChat;

        public HomeViewModel()
        {
            DetailCommand = new Command<User>(async (user) => await OnNavigate(user));
            LoadData();
        }

        public ObservableCollection<User> Users
        {
            get { return _users; }
            set
            {
                _users = value;
                OnPropertyChanged();
            }
        }

        public ObservableCollection<Message> RecentChat
        {
            get { return _recentChat; }
            set
            {
                _recentChat = value;
                OnPropertyChanged();
            }
        }

        public ICommand DetailCommand { get; }

        void LoadData()
        {
            _singleton = Singleton._instance;
            Users = new ObservableCollection<User>(MessageService.Instance.GetUsers());
            RecentChat = new ObservableCollection<Message>(MessageService.Instance.GetChats());
        }

        public async Task OnNavigate(User user)
        {
            //Console.WriteLine($"{nameof(OnNavigate)} >> {parameter == null}");
            //await Shell.Current.GoToAsync($"detail?parameter={parameter}");
            if (user == null)
            {
                Console.WriteLine("❌ Erro: Nenhum usuário foi passado para o DetailCommand!");
                return;
            }

            Console.WriteLine($"✅ Navegando para o DetailView com o usuário: {user.Name}");

            var navigationParams = new Dictionary<string, object>
            {
                { "user", user }
            };
            Singleton.Instance().user = user;
            await Shell.Current.GoToAsync("detail", navigationParams);
        }
    }
}