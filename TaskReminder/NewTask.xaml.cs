using TaskReminder.Classes;
using System.Text.Json;
using System.Threading.Tasks;
using System.Diagnostics;

namespace TaskReminder;

public partial class NewTask : ContentPage, IQueryAttributable
{
    TaskEntity taskEntity;

    public NewTask()
	{
		InitializeComponent();
	}

    private static Tuple<bool, TaskEntity> _RemoveNotificaçõesDuplicadas = new Tuple<bool, TaskEntity>(false,new TaskEntity());
    public async void ApplyQueryAttributes(IDictionary<string, object> query)
    {
        if (query.TryGetValue("TaskName", out var taskName))
        {
            string name = taskName?.ToString();

            if (!string.IsNullOrEmpty(name))
            {
                string taskJson = await SecureStorage.Default.GetAsync(name);
                if (taskJson != null)
                {
                    TaskEntity task;

                    task = JsonSerializer.Deserialize<TaskEntity>(taskJson);

                    if (task != null)
                    {
                        _RemoveNotificaçõesDuplicadas = new Tuple<bool, TaskEntity>(true,task);

                        NameEntry.Text = task.Name;
                        DescriptionEditor.Text = task.Description;
                        OneTimeDatePicker.Date = task.OneTimeDate != null?(DateTime) task.OneTimeDate: OneTimeDatePicker.Date;
                        EveryDayTimePicker.Time = task.EveryDayTimeDate != null ? (TimeSpan)task.EveryDayTimeDate : EveryDayTimePicker.Time;

                        switch (task.TaskType)
                        {
                            case 0:
                                DailyRadioButton.IsChecked = true;
                                break;
                            case 1:
                                SpecificDaysRadioButton.IsChecked = true;
                                break;
                            case 2:
                                OneTimeRadioButton.IsChecked = true;

                                break;

                            default:
                                break;
                        }

                        if(task.WeekDays.Count > 0)
                        {
                           if(task.WeekDays.Contains(1))
                                SundayCheckBox.IsChecked = true;
                            else 
                                SundayCheckBox.IsChecked = false;
                           if (task.WeekDays.Contains(2))
                                MondayCheckBox.IsChecked = true;
                           else 
                                MondayCheckBox.IsChecked = false;
                           if (task.WeekDays.Contains(3))
                                TuesdayCheckBox.IsChecked = true;
                           else 
                                TuesdayCheckBox.IsChecked = false;
                           if (task.WeekDays.Contains(4))
                                WednesdayCheckBox.IsChecked = true;
                           else 
                                WednesdayCheckBox.IsChecked= false;
                           if (task.WeekDays.Contains(5))
                                ThursdayCheckBox.IsChecked = true;
                           else 
                                ThursdayCheckBox.IsChecked = false;
                            if (task.WeekDays.Contains(6))
                                FridayCheckBox.IsChecked = true;
                            else 
                                FridayCheckBox.IsChecked = false;
                            if (task.WeekDays.Contains(7))
                                SaturdayCheckBox.IsChecked = true;
                            else 
                                SaturdayCheckBox.IsChecked = false;
                        }

                        ScreenVisibilityControl(task.TaskType.ToString());
                    }
                }
            }

        }
        else
        {
            _RemoveNotificaçõesDuplicadas = new Tuple<bool, TaskEntity>(false, new TaskEntity());
        }
    }

    private async void BtnSave_Clicked(object sender, EventArgs e)
    {
        if (_RemoveNotificaçõesDuplicadas.Item1)
        {
            NotificationService removeDuplicatadedNotifications = new NotificationService();
            var taskToRemove = _RemoveNotificaçõesDuplicadas.Item2;
            foreach (var notificationId in taskToRemove.NotificationIdList)
            {
                removeDuplicatadedNotifications.CancelarNotificacao(notificationId);
            }
        }
        _RemoveNotificaçõesDuplicadas = new Tuple<bool, TaskEntity>(false,new TaskEntity());

        taskEntity = new TaskEntity();
        taskEntity.Name = NameEntry.Text;
        taskEntity.Description = DescriptionEditor.Text;
        taskEntity.OneTimeDate = OneTimeDatePicker.Date;
        taskEntity.EveryDayTimeDate = EveryDayTimePicker.Time;
        taskEntity.WeekDays = new List<int>();

        // 2. Determinar o tipo de tarefa (RadioButton)
        if (DailyRadioButton.IsChecked)
            taskEntity.TaskType = 0;
        else if (SpecificDaysRadioButton.IsChecked)
            taskEntity.TaskType = 1;
        else if (OneTimeRadioButton.IsChecked)
            taskEntity.TaskType = 2;

        // 3. Pegar os dias da semana marcados (CheckBoxes)
        if (SundayCheckBox.IsChecked)
            taskEntity.WeekDays.Add(1); // Domingo
        if (MondayCheckBox.IsChecked)
            taskEntity.WeekDays.Add(2); // Segunda
        if (TuesdayCheckBox.IsChecked)
            taskEntity.WeekDays.Add(3); // Terça
        if (WednesdayCheckBox.IsChecked)
            taskEntity.WeekDays.Add(4); // Quarta
        if (ThursdayCheckBox.IsChecked)
            taskEntity.WeekDays.Add(5); // Quinta
        if (FridayCheckBox.IsChecked)
            taskEntity.WeekDays.Add(6); // Sexta
        if (SaturdayCheckBox.IsChecked)
            taskEntity.WeekDays.Add(7); // Sábado

        if (string.IsNullOrEmpty(taskEntity.Name))
        {
           await DisplayAlert("Atenção","Nome da tarefa obrigatório","Ok");
            return;
        }

        string? notificationIdAutoInc = await SecureStorage.Default.GetAsync("notificationIdAutoInc");

        int lastIdNotification = string.IsNullOrEmpty(notificationIdAutoInc)?0:Convert.ToInt32(notificationIdAutoInc);

        switch (taskEntity.TaskType)
        {
            case 0://Dirária
               
               if (taskEntity.EveryDayTimeDate == null)
                {
                    await DisplayAlert("Atenção", "Horário obrigatório", "Ok");
                    return;
                }

                lastIdNotification++;
                taskEntity.NotificationIdList = new List<int> { lastIdNotification };

                break;

            case 1: // Dias da semana
                if (taskEntity.EveryDayTimeDate == null)
                {
                    await DisplayAlert("Atenção", "Horário obrigatório", "Ok");
                    return;
                }
                if(taskEntity.WeekDays == null || taskEntity.WeekDays.Count == 0)
                {
                    await DisplayAlert("Atenção", "Dia da semana obrigatório", "Ok");
                    return;
                }
                taskEntity.NotificationIdList = new List<int>();
                foreach (var days in taskEntity.WeekDays)
                {
                    lastIdNotification++;
                    taskEntity.NotificationIdList.Add(lastIdNotification);
                }
                break;

            case 2: // Apenas uma vez
              
                if (taskEntity.OneTimeDate == null)
                {
                    await DisplayAlert("Atenção", "Data obrigatória", "Ok");
                    return;
                }
                if (taskEntity.EveryDayTimeDate == null)
                {
                    await DisplayAlert("Atenção", "Horário obrigatório", "Ok");
                    return;
                }

                lastIdNotification++;
                taskEntity.NotificationIdList = new List<int> { lastIdNotification };
                break;

            default:
                break;
        }

        string json = JsonSerializer.Serialize(taskEntity);

        try
        {
            List<string>? keyList;
            string? keys = await SecureStorage.Default.GetAsync("keys");
            if (keys != null) 
            {
                 keyList = JsonSerializer.Deserialize<List<string>>(keys) == null?new List<string>(): JsonSerializer.Deserialize<List<string>>(keys);
            }
            else
            {
                keyList = new List<string>();
            }

            keyList?.Add(taskEntity.Name);

            string keyListJson = JsonSerializer.Serialize(keyList);

            NotificationService service = new NotificationService();

            await SecureStorage.Default.SetAsync("keys", keyListJson);
            await SecureStorage.Default.SetAsync(taskEntity.Name, json);
            await SecureStorage.Default.SetAsync("notificationIdAutoInc", taskEntity.NotificationIdList.Max().ToString());
             
            await service.CreateNotification(taskEntity);
            await DisplayAlert("Sucesso", "Task Salva", "Ok");
            CleanScreen();
            await Shell.Current.GoToAsync("//MainPage");
        }
        catch (Exception)
        {

            throw;
        }

    }

    private void CleanScreen()
    {
        NameEntry.Text = string.Empty;
        DescriptionEditor.Text = string.Empty;
        OneTimeRadioButton.IsChecked = true;
        SundayCheckBox.IsChecked = false;
        MondayCheckBox.IsChecked = false;
        TuesdayCheckBox.IsChecked = false;
        WednesdayCheckBox.IsChecked = false;
        ThursdayCheckBox.IsChecked = false;
        FridayCheckBox.IsChecked = false;
        SaturdayCheckBox.IsChecked = false;
    }

    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        CleanScreen();
    }

    private void Checked_Change(object sender, CheckedChangedEventArgs e)
    {
        if (!(sender is RadioButton radioButton) || !radioButton.IsChecked)
            return;

        var selectedValue = radioButton.Value?.ToString();

        ScreenVisibilityControl(selectedValue);
    }

    private void ScreenVisibilityControl(string selectedValue)
    {
        switch (selectedValue)
        {
            case "0": // Diário
                LblDate.IsVisible = false;
                OneTimeDatePicker.IsVisible = false;

                LblTime.IsVisible = true;
                EveryDayTimePicker.IsVisible = true;

                LblWeekDays.IsVisible = false;
                FlWeekDays.IsVisible = false;


                break;
            case "1": // Dias Específicos
                LblDate.IsVisible = false;
                OneTimeDatePicker.IsVisible = false;

                LblTime.IsVisible = true;
                EveryDayTimePicker.IsVisible = true;

                LblWeekDays.IsVisible = true;
                FlWeekDays.IsVisible = true;
                break;
            case "2": // Apenas 1 Vez
                LblDate.IsVisible = true;
                OneTimeDatePicker.IsVisible = true;

                LblTime.IsVisible = true;
                EveryDayTimePicker.IsVisible = true;

                LblWeekDays.IsVisible = false;
                FlWeekDays.IsVisible = false;
                break;
        }
    }
}