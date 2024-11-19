namespace aplikacja.strony.zakladki;

public partial class Rejestracja : ContentPage
{
	public Rejestracja()
	{
		InitializeComponent();
	}
	async void closebutton(object sender, EventArgs args)
    {
        Navigation.PopModalAsync();
    }
}