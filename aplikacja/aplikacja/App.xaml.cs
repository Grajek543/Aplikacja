using aplikacja.strony;
using aplikacja.strony.zakładki;
using aplikacja.strony.navigacja;
namespace aplikacja
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            //MainPage = new NavigationPage(new stronanav1());
            // var navigationPage = new NavigationPage(new stronanav1);
            // navigationPage.BarBackgroundColor = Colors.Black;
            // navigationPage.BarTextColor = Colors.White;
            MainPage = new zakladka1();

        }
    }
}
