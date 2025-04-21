using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using TaskReminder.Classes;

namespace TaskReminder
{
    [Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, LaunchMode = LaunchMode.SingleTop, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
    public class MainActivity : MauiAppCompatActivity
    {
        
        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Permission[] grantResults)
        {
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            NotificationService service = new NotificationService();
            // Conversão para int[] antes de passar
            service.OnRequestPermissionsResult(
                requestCode,
                permissions,
                grantResults.Select(g => (int)g).ToArray()
            );
        }
    }
}
