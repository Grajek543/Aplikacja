using Android.App;
using Android.Content.PM;
using Android.OS;
using Firebase;
using Plugin.Fingerprint.Abstractions;
using Plugin.Fingerprint;
using Microsoft.Maui;
using Android.Hardware;
using Android.Runtime;
using Android.Hardware;
using Android.Provider;


namespace PARTPICKER.Platforms.Android
{
    [Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, LaunchMode = LaunchMode.SingleTop, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
    public class MainActivity : MauiAppCompatActivity, ISensorEventListener
    {
        private SensorManager _sensorManager;
        private Sensor _accelerometer;
        private const float Threshold = 0.5f; // Minimalna wartość dla zmiany orientacji
        private ScreenOrientation _currentOrientation = ScreenOrientation.Portrait; // Bieżąca orientacja

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Inicjalizacja Firebase
            FirebaseApp.InitializeApp(this);
            Plugin.Fingerprint.CrossFingerprint.SetCurrentActivityResolver(() => Platform.CurrentActivity);

            // Inicjalizacja akcelerometru
            _sensorManager = (SensorManager)GetSystemService(SensorService);
            _accelerometer = _sensorManager.GetDefaultSensor(SensorType.Accelerometer);
        }

        //Autoobracanie
        

        protected override void OnResume()
        {
            base.OnResume();

            // Rejestracja słuchacza tylko, jeśli autoobracanie jest włączone
            if (IsAutoRotationEnabled() && _accelerometer != null)
            {
                _sensorManager.RegisterListener(this, _accelerometer, SensorDelay.Ui);
            }
        }

        protected override void OnPause()
        {
            base.OnPause();

            // Wyrejestrowanie słuchacza
            if (_sensorManager != null)
            {
                _sensorManager.UnregisterListener(this);
            }
        }

        public void OnAccuracyChanged(Sensor sensor, SensorStatus accuracy)
        {
            // Nie wymaga obsługi w tej implementacji
        }

        public void OnSensorChanged(SensorEvent e)
        {
            if (!IsAutoRotationEnabled())
            {
                // Autoobracanie wyłączone, ignoruj zmiany
                return;
            }

            float x = -e.Values[0];
            float y = e.Values[1];

            if (Math.Abs(x) > Math.Abs(y))
            {
                if (x > Threshold && _currentOrientation != ScreenOrientation.Landscape)
                {
                    RequestedOrientation = ScreenOrientation.Landscape;
                    _currentOrientation = ScreenOrientation.Landscape;
                }
                else if (x < -Threshold && _currentOrientation != ScreenOrientation.ReverseLandscape)
                {
                    RequestedOrientation = ScreenOrientation.ReverseLandscape;
                    _currentOrientation = ScreenOrientation.ReverseLandscape;
                }
            }
            else
            {
                if (y > Threshold && _currentOrientation != ScreenOrientation.Portrait)
                {
                    RequestedOrientation = ScreenOrientation.Portrait;
                    _currentOrientation = ScreenOrientation.Portrait;
                }
                else if (y < -Threshold && _currentOrientation != ScreenOrientation.ReversePortrait)
                {
                    RequestedOrientation = ScreenOrientation.ReversePortrait;
                    _currentOrientation = ScreenOrientation.ReversePortrait;
                }
            }
        }

        private bool IsAutoRotationEnabled()
        {
            // Sprawdzenie ustawienia autoobracania w systemie
            var resolver = ContentResolver;
            int rotationSetting = Settings.System.GetInt(resolver, Settings.System.AccelerometerRotation, 0);
            return rotationSetting == 1; // 1 oznacza, że autoobracanie jest włączone
        }
    }
}

