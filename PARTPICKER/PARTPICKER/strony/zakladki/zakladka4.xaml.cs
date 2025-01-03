namespace PARTPICKER.strony.zakladki;
using Plugin.FirebaseAuth;
using System;

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

    async void OnLoginClicked(object sender, EventArgs args)
    {
        string email = EmailEntry.Text; // Pobiera e-mail z pola wejœciowego
        string password = PasswordEntry.Text; // Pobiera has³o z pola wejœciowego

        try
        {
            var user = await CrossFirebaseAuth.Current.Instance.SignInWithEmailAndPasswordAsync(email, password);
            await DisplayAlert("Sukces", $"Witaj, {user.User.Email}!", "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("B³¹d", ex.Message, "OK");
        }
    }
}