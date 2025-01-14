using PARTPICKER.Services;

namespace PARTPICKER.strony.zakladki;

public partial class zakladka3 : ContentPage
{
    private readonly IThemeManager _themeManager;
    public zakladka3()
    {
        InitializeComponent();

        // Pobieramy ThemeManager (on ma ju¿ dostêp do czujnika)
        _themeManager = MauiProgram.AppInstance.Services.GetService<IThemeManager>()!;
        //lista jêzyków
        List<string> languages = new List<string> { "English", "Polski" };
        LanguageListView.ItemsSource = languages;
        // Lista motywów
        List<string> themes = new List<string> { "Auto", "Light", "Dark" };
        ThemeListView.ItemsSource = themes;

        // Upewnijmy siê, ¿e zaznaczymy na liœcie to, co jest obecnie w ThemeManager
        string currentTheme = _themeManager.GetUserSelectedTheme();
        ThemeListView.SelectedItem = currentTheme;
    }

    private void OnSelectLanguageButtonClicked(object sender, EventArgs e)
    {
        // pokazuje lub ukrywa listy jêzyków po klikniêciu przycisku
        LanguageListView.IsVisible = !LanguageListView.IsVisible;
    }

    private void OnLanguageSelected(object sender, SelectionChangedEventArgs e)
    {
        string selectedLanguage = e.CurrentSelection[0] as string;

        // Tutaj dodaj logikê zmiany jêzyka (np. zapisanie preferencji u¿ytkownika)
        DisplayAlert("Language Selected", $"Selected language: {selectedLanguage}", "OK");

        // ukrywa listê po dokonaniu wyboru
        LanguageListView.IsVisible = false;
    }




    private void OnSelectThemeButtonClicked(object sender, EventArgs e)
    {
        // Pokazuje lub ukrywa listê motywów po klikniêciu przycisku
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