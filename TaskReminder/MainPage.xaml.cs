using System.Collections.ObjectModel;
using System.Text.Json;
using TaskReminder.Classes;

namespace TaskReminder
{

    public partial class MainPage : ContentPage
    {
        List<string>Keys = new List<string>();

        public ObservableCollection<TaskEntity> TaskList = new ObservableCollection<TaskEntity>();

        public MainPage()
        {
            InitializeComponent();
            TaskCollectionView.ItemsSource = TaskList;
        }

        protected async override void OnAppearing()
        {
            base.OnAppearing();

            TaskList.Clear();

            string keysReturn = await SecureStorage.Default.GetAsync("keys");

            if (keysReturn != null)
            {
              Keys = JsonSerializer.Deserialize<List<string>>(keysReturn);
            }
            if (Keys != null)
            {
                Keys = Keys.Distinct().ToList();
                foreach (string key in Keys)
                {
                    string taskJson = await SecureStorage.Default.GetAsync(key);
                    if (taskJson != null) 
                    {
                        TaskEntity task;

                        task = JsonSerializer.Deserialize<TaskEntity>(taskJson);

                        if (task != null) 
                        { 
                            TaskList.Add(task);
                        }
                    }
                    
                }
            }

            if (TaskList == null || TaskList.Count == 0)
            {
                LblEmptyMessage.IsVisible = true;
            }
            else
            {
                LblEmptyMessage.IsVisible = false;
            }
             
        }

      
        private async void BtnNewTask_Clicked(object sender, EventArgs e)
        {
            await Shell.Current.GoToAsync("//NewTask");
        }

        private async void BtnDelete_Clicked(object sender, EventArgs e)
        {
            var button = (ImageButton)sender;
            var nomeTask = button.CommandParameter as string;

            if (!string.IsNullOrEmpty(nomeTask))
            {
                // Mostrar o alerta de confirmação
                bool confirmar = await DisplayAlert("Confirmar Remoção", $"Deseja remover a tarefa '{nomeTask}'?", "OK", "Cancelar");

                if (confirmar)
                {
                    // Se confirmou, procura a task pelo nome e remove
                    var taskToRemove = TaskList.FirstOrDefault(t => t.Name == nomeTask);

                    NotificationService service = new NotificationService();
                    if(taskToRemove.NotificationIdList != null && taskToRemove.NotificationIdList.Count >0)
                    {
                        foreach (int notificationInd in taskToRemove.NotificationIdList)
                        {
                            try
                            {
                                service.CancelarNotificacao(notificationInd);
                            }
                            catch (Exception)
                            {

                                throw;
                            }

                        }
                    }
                
                    if (taskToRemove != null)
                    {
                        TaskList.Remove(taskToRemove);
                    }

                    SecureStorage.Default.Remove(nomeTask);

                    string keysReturn = await SecureStorage.Default.GetAsync("keys");

                    if (keysReturn != null)
                    {
                        Keys = JsonSerializer.Deserialize<List<string>>(keysReturn);
                    }

                    if(Keys != null && Keys.Count > 0)
                    {
                        Keys.Remove(nomeTask);
                    }

                    string NewKeys = JsonSerializer.Serialize(Keys);

                    await SecureStorage.Default.SetAsync("keys", NewKeys);
                }
            }
        }

        private async void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
        {
            var name = e.Parameter?.ToString();

            var param = new Dictionary<string, object>
                {
                    { "TaskName", name },
                };
            if (!string.IsNullOrEmpty(name))
            {
                await Shell.Current.GoToAsync($"//NewTask", param);
            }
        }
    }

}
