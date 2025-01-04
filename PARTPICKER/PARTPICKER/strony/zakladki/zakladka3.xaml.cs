using PARTPICKER.Services;

namespace PARTPICKER.strony.zakladki
{
    public partial class zakladka3 : ContentPage
    {
        private readonly IThemeManager _themeManager;

        public zakladka3()
        {
            InitializeComponent();

            // Pobieramy ThemeManager (on ma już dostęp do czujnika)
            _themeManager = MauiProgram.AppInstance.Services.GetService<IThemeManager>()!;

            // Inicjalizacja list języków i motywów
            List<string> languages = new List<string> { "English", "Polski" };
            LanguageListView.ItemsSource = languages;

            List<string> themes = new List<string> { "Auto", "Light", "Dark" };
            ThemeListView.ItemsSource = themes;

            // Upewnijmy się, że zaznaczymy na liście to, co jest obecnie w ThemeManager
            string currentTheme = _themeManager.GetUserSelectedTheme();
            ThemeListView.SelectedItem = currentTheme;
        }

        private void OnSelectLanguageButtonClicked(object sender, EventArgs e)
        {
            LanguageListView.IsVisible = !LanguageListView.IsVisible;
        }

        private void OnLanguageSelected(object sender, SelectionChangedEventArgs e)
        {
            string selectedLanguage = e.CurrentSelection.FirstOrDefault() as string;
            DisplayAlert("Language Selected", $"Selected language: {selectedLanguage}", "OK");
            LanguageListView.IsVisible = false;
        }

        private void OnSelectThemeButtonClicked(object sender, EventArgs e)
        {
            ThemeListView.IsVisible = !ThemeListView.IsVisible;
        }

        private void OnThemeSelected(object sender, SelectionChangedEventArgs e)
        {
            string selectedTheme = e.CurrentSelection.FirstOrDefault() as string;
            if (string.IsNullOrWhiteSpace(selectedTheme))
                return;

            // Ustawiamy w ThemeManager
            _themeManager.SetUserSelectedTheme(selectedTheme);

            DisplayAlert("Theme Selected", $"Selected theme: {selectedTheme}", "OK");
            ThemeListView.IsVisible = false;
        }
    }
}
