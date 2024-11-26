namespace PARTPICKER.strony.zakladki;

public partial class zakladka3 : ContentPage
{
    public zakladka3()
    {
        InitializeComponent();
        //lista j�zyk�w
        List<string> languages = new List<string> { "English", "Polski" };
        LanguageListView.ItemsSource = languages;
        // Lista motyw�w
        List<string> themes = new List<string> { "Auto", "Light", "Dark" };
        ThemeListView.ItemsSource = themes;
    }

    private void OnSelectLanguageButtonClicked(object sender, EventArgs e)
    {
        // pokazuje lub ukrywa listy j�zyk�w po klikni�ciu przycisku
        LanguageListView.IsVisible = !LanguageListView.IsVisible;
    }

    private void OnLanguageSelected(object sender, SelectionChangedEventArgs e)
    {
        string selectedLanguage = e.CurrentSelection[0] as string;

        // Tutaj dodaj logik� zmiany j�zyka (np. zapisanie preferencji u�ytkownika)
        DisplayAlert("Language Selected", $"Selected language: {selectedLanguage}", "OK");

        // ukrywa list� po dokonaniu wyboru
        LanguageListView.IsVisible = false;
    }




    private void OnSelectThemeButtonClicked(object sender, EventArgs e)
    {
        // Pokazuje lub ukrywa list� motyw�w po klikni�ciu przycisku
        ThemeListView.IsVisible = !ThemeListView.IsVisible;
    }

    private void OnThemeSelected(object sender, SelectionChangedEventArgs e)
    {
        string selectedTheme = e.CurrentSelection[0] as string;

        // Zmienia motyw w zale�no�ci od wyboru u�ytkownika
        switch (selectedTheme)
        {
            case "Auto":
                Application.Current.UserAppTheme = AppTheme.Unspecified;
                break;
            case "Light":
                Application.Current.UserAppTheme = AppTheme.Light;
                break;
            case "Dark":
                Application.Current.UserAppTheme = AppTheme.Dark;
                break;
        }

        // Wy�wietla informacj� o wybranym motywie i ukrywa list� po dokonaniu wyboru
        DisplayAlert("Theme Selected", $"Selected theme: {selectedTheme}", "OK");
        ThemeListView.IsVisible = false;

    }
}