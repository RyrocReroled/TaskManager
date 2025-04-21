using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Plugin.LocalNotification;


#if ANDROID
using Android;
using Android.Content.PM;
using AndroidX.Core.App;
using Android.App;
#endif
namespace TaskReminder.Classes
{
    public class NotificationService
    {
        private static TaskCompletionSource<bool> _tcsPermissao;

        public async Task<bool> VerificarPermissaoNotificacaoAsync()
        {
            #if ANDROID
                var activity = Platform.CurrentActivity ?? Platform.AppContext as Activity;
                if (activity != null)
                {
                    if (Android.OS.Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.Tiramisu) // API 33+
                    {
                        var permissionStatus = ActivityCompat.CheckSelfPermission(activity, Manifest.Permission.PostNotifications);
                        if (permissionStatus != Permission.Granted)
                        {
                            _tcsPermissao = new TaskCompletionSource<bool>();

                            ActivityCompat.RequestPermissions(activity, new[] { Manifest.Permission.PostNotifications }, 0);

                            // AGUARDA até o usuário responder
                            return await _tcsPermissao.Task;
                        }
                    }
                }
            #endif

            return true;
        }

        // Este método será chamado pela MainActivity
        public  void OnRequestPermissionsResult(int requestCode, string[] permissions, int[] grantResults)
        {
        #if ANDROID
                if (requestCode == 0 && permissions.Contains(Manifest.Permission.PostNotifications))
                {
                    bool granted = grantResults.Length > 0 && grantResults[0] == (int)Android.Content.PM.Permission.Granted;
                    _tcsPermissao?.TrySetResult(granted);
                }
        #endif
        }


        public async Task CreateNotification(TaskEntity taskEntity)
        {
            bool deuPermicao = await VerificarPermissaoNotificacaoAsync();
           
            if (deuPermicao)
            {
                switch (taskEntity.TaskType)
                {
                    case 0:
                       await AgendarNotificacaoDiaria((TimeSpan)taskEntity.EveryDayTimeDate,taskEntity.NotificationIdList.FirstOrDefault(),taskEntity.Name,taskEntity.Description);
                        break;
                    case 1:
                        List<DayOfWeek> diasDaSemana = new List<DayOfWeek>();
                        foreach (int weerDay in taskEntity.WeekDays)
                            {
                                switch (weerDay)
                                {
                                    case 1:
                                        diasDaSemana.Add(DayOfWeek.Sunday);
                                        break;
                                    case 2:
                                        diasDaSemana.Add(DayOfWeek.Monday);
                                        break;
                                    case 3:
                                        diasDaSemana.Add(DayOfWeek.Tuesday);
                                        break;
                                    case 4:
                                        diasDaSemana.Add(DayOfWeek.Wednesday);
                                        break;
                                    case 5:
                                        diasDaSemana.Add(DayOfWeek.Thursday);
                                        break;
                                    case 6:
                                        diasDaSemana.Add(DayOfWeek.Friday);
                                        break;
                                    case 7:
                                        diasDaSemana.Add(DayOfWeek.Saturday);
                                        break;
                                    default:
                                        break;
                                }
                            }
                        

                       await AgendarNotificacoesSemanaisAsync(diasDaSemana,(TimeSpan)taskEntity.EveryDayTimeDate, taskEntity.NotificationIdList,taskEntity.Name,taskEntity.Description);

                        break;
                    case 2:
                        await AgendarNotificacaoUnica((DateTime)taskEntity.OneTimeDate,(TimeSpan)taskEntity.EveryDayTimeDate,taskEntity.Name,taskEntity.Description,taskEntity.NotificationIdList.FirstOrDefault());
                        break;
                    default:
                        break;
                }
            }
        }

        public async Task AgendarNotificacaoDiaria(TimeSpan horario, int notificationId, string title, string description)
        {
            var agora = DateTime.Now;
            var hojeComHorario = new DateTime(agora.Year, agora.Month, agora.Day, horario.Hours, horario.Minutes, horario.Seconds);

            // Se o horário já passou hoje, agenda para amanhã
            if (hojeComHorario <= agora)
            {
                hojeComHorario = hojeComHorario.AddDays(1);
            }

            var notification = new NotificationRequest
            {
                NotificationId = notificationId, // ID único pra essa notificação
                Title = title,
                Description = description,
                Schedule = new NotificationRequestSchedule
                {
                    NotifyTime = hojeComHorario,
                    RepeatType = NotificationRepeat.Daily, // Aqui diz que é TODO DIA
                },
            };

            // Envia a notificação
          await LocalNotificationCenter.Current.Show(notification);
        }

        public async Task AgendarNotificacoesSemanaisAsync(List<DayOfWeek> diasDaSemana, TimeSpan horario,List<int>NotificationIds, string title, string description)
        {
            var agora = DateTime.Now;
            int notificationIndex = 0; // Comece com algum ID e incremente para não sobrescrever

            foreach (var dia in diasDaSemana)
            {
                // Calcular o próximo dia da semana correspondente
                int diasAteNotificacao = ((int)dia - (int)agora.DayOfWeek + 7) % 7;
                var dataNotificacao = agora.Date.AddDays(diasAteNotificacao)
                    .Add(horario);

                // Se o horário já passou hoje, empurra para a próxima semana
                if (dataNotificacao <= agora)
                {
                    dataNotificacao = dataNotificacao.AddDays(7);
                }

                var notification = new NotificationRequest
                {
                    NotificationId = NotificationIds[notificationIndex],
                    Title = title,
                    Description = description,
                    Schedule = new NotificationRequestSchedule
                    {
                        NotifyTime = dataNotificacao,
                        RepeatType = NotificationRepeat.Weekly
                    }
                };

                // Agendar a notificação
                notificationIndex++;
              await  LocalNotificationCenter.Current.Show(notification);
            }
        }

        public async Task AgendarNotificacaoUnica(DateTime data, TimeSpan horario, string title, string description, int notificationId)
        {
            // Junta a data e a hora
            var dataComHorario = new DateTime(
                data.Year, data.Month, data.Day,
                horario.Hours, horario.Minutes, horario.Seconds
            );

            var notification = new NotificationRequest
            {
                NotificationId = notificationId, // ID único (pode ser qualquer número, desde que não se repita)
                Title = title,
                Description = description,
                Schedule = new NotificationRequestSchedule
                {
                    NotifyTime = dataComHorario,
                    RepeatType = NotificationRepeat.No // NÃO repetir
                }
            };

            // Agendar a notificação
           await LocalNotificationCenter.Current.Show(notification);
        }

        public void CancelarNotificacao(int notificationId)
        {
            LocalNotificationCenter.Current.Cancel(notificationId);
        }
    }
}
