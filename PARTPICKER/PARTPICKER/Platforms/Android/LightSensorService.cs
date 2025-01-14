#if ANDROID
using Android.App;
using Android.Content;
using Android.Hardware;
using PARTPICKER.Services;


namespace PARTPICKER.Platforms.Android
{
    public class LightSensorService : Java.Lang.Object, ILightSensorService, ISensorEventListener
    {
        private readonly SensorManager _sensorManager;
        private readonly Sensor? _lightSensor;

        public event EventHandler<float>? ReadingChanged;

        public LightSensorService()
        {
            // Kontekst systemu Android:
            var context = global::Android.App.Application.Context;

            _sensorManager = (SensorManager)context.GetSystemService(Context.SensorService)!;
            _lightSensor = _sensorManager?.GetDefaultSensor(SensorType.Light);
        }

        public void Start()
        {
            if (_lightSensor != null)
            {
                _sensorManager.RegisterListener(this, _lightSensor, SensorDelay.Ui);
            }
        }

        public void Stop()
        {
            if (_lightSensor != null)
            {
                _sensorManager.UnregisterListener(this, _lightSensor);
            }
        }

        public void OnAccuracyChanged(Sensor? sensor, SensorStatus accuracy)
        {
            // nieużywane w tym przykładzie
        }

        public void OnSensorChanged(SensorEvent? e)
        {
            if (e?.Values == null || e.Values.Count == 0)
                return;

            float luxValue = e.Values[0];
            ReadingChanged?.Invoke(this, luxValue);
        }
    }
}
#endif