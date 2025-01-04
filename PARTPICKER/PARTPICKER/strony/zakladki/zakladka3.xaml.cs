using PARTPICKER.Services;

namespace PARTPICKER.strony.zakladki
{
    public partial class zakladka3 : ContentPage
    {
        private readonly ILightSensorService _lightSensorService;

        // Przechowujemy aktualnie wybrany przez użytkownika tryb (Light, Dark, Auto)
        private string _userSelectedTheme = "Light";

        // Zapamiętujemy, co ostatnio zostało ustawione automatycznie (aby nie przełączać non-stop)
        private string? _lastAutoAppliedTheme = null;

        // Ustalamy próg luksów, poniżej którego uznajemy, że jest ciemno
        private const float AutoThemeThreshold = 80.0f;

        // Konstruktor bezparametrowy – wymagany, gdy strona jest tworzona automatycznie
        public zakladka3()
        {
            InitializeComponent();

            // Pobieramy usługę z kontenera (MauiProgram.AppInstance.Services)
            _lightSensorService = MauiProgram.AppInstance.Services.GetService<ILightSensorService>()!;

            // Inicjalizacja list języków i motywów
            List<string> languages = new List<string> { "English", "Polski" };
            LanguageListView.ItemsSource = languages;

            List<string> themes = new List<string> { "Auto", "Light", "Dark" };
            ThemeListView.ItemsSource = themes;
        }

        // Konstruktor z parametrem, gdy tworzysz stronę manualnie
        public zakladka3(ILightSensorService lightSensorService)
        {
            InitializeComponent();

            _lightSensorService = lightSensorService;

            // Inicjalizacja list języków i motywów
            List<string> languages = new List<string> { "English", "Polski" };
            LanguageListView.ItemsSource = languages;

            List<string> themes = new List<string> { "Auto", "Light", "Dark" };
            ThemeListView.ItemsSource = themes;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            // Subskrybujemy się na zdarzenie z czujnika
            _lightSensorService.ReadingChanged += OnLightSensorReadingChanged;
            _lightSensorService.Start();
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();

            // Zatrzymujemy nasłuch i odpinamy się od zdarzenia
            _lightSensorService.Stop();
            _lightSensorService.ReadingChanged -= OnLightSensorReadingChanged;
        }

        private void OnLightSensorReadingChanged(object sender, float luxValue)
        {
            MainThread.BeginInvokeOnMainThread(() =>
            {
                LightSensorLabel.Text = $"Czujnik światła: {luxValue} lx";

                // Jeśli użytkownik wybrał "Auto", przełączamy motywy w zależności od lux
                if (_userSelectedTheme == "Auto")
                {
                    // Jeśli lux < próg, tryb Dark
                    // Jeśli lux >= próg, tryb Light
                    string autoTheme = (luxValue < AutoThemeThreshold) ? "Dark" : "Light";

                    // Żeby nie "migać" przy minimalnych zmianach, ustawiamy tylko jeśli się zmieniło
                    if (_lastAutoAppliedTheme != autoTheme)
                    {
                        var app = Application.Current as App;
                        app?.SetTheme(autoTheme);
                        _lastAutoAppliedTheme = autoTheme;
                    }
                }
            });
        }

        private void OnSelectLanguageButtonClicked(object sender, EventArgs e)
        {
            LanguageListView.IsVisible = !LanguageListView.IsVisible;
        }

        private void OnLanguageSelected(object sender, SelectionChangedEventArgs e)
        {
            string selectedLanguage = e.CurrentSelection[0] as string;
            DisplayAlert("Language Selected", $"Selected language: {selectedLanguage}", "OK");
            LanguageListView.IsVisible = false;
        }

        private void OnSelectThemeButtonClicked(object sender, EventArgs e)
        {
            ThemeListView.IsVisible = !ThemeListView.IsVisible;
        }

        private void OnThemeSelected(object sender, SelectionChangedEventArgs e)
        {
            string selectedTheme = e.CurrentSelection[0] as string;
            _userSelectedTheme = selectedTheme;

            var app = Application.Current as App;

            if (selectedTheme == "Auto")
            {
                // Natychmiast przełączamy w zależności od aktualnego lux
                // lub poczekamy, aż wartości spłyną z czujnika i OnLightSensorReadingChanged się wywoła.
                // Na wszelki wypadek można wymusić auto-uaktualnienie (np. symulując ReadingChanged).
            }
            else
            {
                // Jeżeli nie jest "Auto", to ustawiamy jawnie motyw
                app?.SetTheme(selectedTheme);
            }

            DisplayAlert("Theme Selected", $"Selected theme: {selectedTheme}", "OK");
            ThemeListView.IsVisible = false;
        }
    }
}
