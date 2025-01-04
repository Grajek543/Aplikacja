using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using PARTPICKER.Services;

namespace PARTPICKER.Services
{
    public class ThemeManager : IThemeManager
    {
        private readonly ILightSensorService _lightSensorService;

        // Minimalna wartość lux, poniżej której włączamy Dark
        private const float AutoThemeThreshold = 100.0f;

        // Przechowujemy wybrany przez użytkownika motyw: "Light", "Dark", "Auto"
        private string _userSelectedTheme = "Light";

        // Zapamiętujemy ostatnio ustawiony motyw w trybie Auto,
        // żeby nie przełączać co chwilę przy drobnych wahaniach
        private string? _lastAutoAppliedTheme = null;

        public ThemeManager(ILightSensorService lightSensorService)
        {
            _lightSensorService = lightSensorService;

            // Subskrybujemy się na zmiany z czujnika – serwis będzie aktywny "w tle"
            _lightSensorService.ReadingChanged += OnLightSensorReadingChanged;
            _lightSensorService.Start();
        }

        public void SetUserSelectedTheme(string theme)
        {
            _userSelectedTheme = theme;

            // Jeśli user wybrał LIGHT albo DARK, od razu ustawiamy to globalnie
            // Jeśli user wybrał AUTO, to motyw ustawi się w OnLightSensorReadingChanged
            // (lub możemy wymusić jednorazowy odczyt wartości lux)
            if (_userSelectedTheme != "Auto")
            {
                var app = Application.Current as App;
                app?.SetTheme(_userSelectedTheme);
            }
            else
            {
                // "Auto" - najlepiej od razu sprawdzić ostatni odczyt z sensora
                // Można to zrobić, jeśli np. nasz ILightSensorService udostępnia
                // właściwość "LastReading" z ostatnim stanem lux.
                // Ewentualnie po prostu poczekamy, aż za chwilę przyjdzie event ReadingChanged
            }
        }

        public string GetUserSelectedTheme() => _userSelectedTheme;

        private void OnLightSensorReadingChanged(object sender, float luxValue)
        {
            // Jeśli user wybrał AUTO, wtedy sterujemy motywem na podstawie lux
            if (_userSelectedTheme == "Auto")
            {
                string autoTheme = (luxValue < AutoThemeThreshold) ? "Dark" : "Light";

                // Żeby uniknąć "migania", zmieniamy tylko, gdy faktycznie jest potrzeba
                if (_lastAutoAppliedTheme != autoTheme)
                {
                    _lastAutoAppliedTheme = autoTheme;

                    // Pamiętajmy wywołać to na wątku UI
                    MainThread.BeginInvokeOnMainThread(() =>
                    {
                        var app = Application.Current as App;
                        app?.SetTheme(autoTheme);
                    });
                }
            }
        }
    }
}
