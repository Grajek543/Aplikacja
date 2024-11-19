namespace aplikacja.strony.zakladki;

public partial class zakladka4 : ContentPage
{
	public zakladka4()
	{
		InitializeComponent();
	}

    async void OnButtonClicked(object sender, EventArgs args)
    {
        Navigation.PushModalAsync(new Rejestracja());
    }
}
