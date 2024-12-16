using PARTPICKER.strony.zakladki;
namespace PARTPICKER
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new AppShell();
            SetTheme("Light"); // Domyślny motyw
        }
        public void SetTheme(string theme)
        {
            var resources = Application.Current.Resources;

            switch (theme)
            {
                case "Light":
                    resources["PrimaryColor"] = resources["PrimaryColorLight"];
                    resources["SecondaryColor"] = resources["SecondaryColorLight"];
                    resources["TextColor"] = resources["TextColorLight"];
                    break;

                case "Dark":
                    resources["PrimaryColor"] = resources["PrimaryColorDark"];
                    resources["SecondaryColor"] = resources["SecondaryColorDark"];
                    resources["TextColor"] = resources["TextColorDark"];
                    break;
            }
        }
    }
}
