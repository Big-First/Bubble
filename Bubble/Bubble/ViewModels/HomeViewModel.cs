using System.Collections.ObjectModel;
using System.Windows.Input;
using Bubble.Models;
using Bubble.Services;
using Bubble.Views;

namespace Bubble.ViewModels
{
    public class HomeViewModel : ViewModelBase
    {
        ObservableCollection<User> _users { get; set; }
        ObservableCollection<Message> _recentChat { get; set; }

        public HomeViewModel()
        {
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

        public ICommand DetailCommand => new Command<object>(OnNavigate);

        void LoadData()
        {
            Users = new ObservableCollection<User>(MessageService.Instance.GetUsers());
            RecentChat = new ObservableCollection<Message>(MessageService.Instance.GetChats());
        }

        public async void OnNavigate(object parameter)
        {
            Console.WriteLine($"{nameof(OnNavigate)} >> {parameter == null}");
            await Shell.Current.GoToAsync($"detail?parameter={parameter}");
        }
    }
}