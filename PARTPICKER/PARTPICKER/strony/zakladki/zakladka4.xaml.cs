namespace PARTPICKER.strony.zakladki;
using Plugin.FirebaseAuth;
using System;
using Plugin.Fingerprint;
using Plugin.Fingerprint.Abstractions;
using Microsoft.Maui.Storage; // Dla SecureStorage

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
            await SecureStorage.SetAsync("email", email);
            await SecureStorage.SetAsync("password", password);
            await DisplayAlert("Sukces", $"Witaj, {user.User.Email}!", "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("B³¹d", ex.Message, "OK");
        }
    }

    async void OnBiometricLoginClicked(object sender, EventArgs args)
    {
        var authResult = await CrossFingerprint.Current.AuthenticateAsync(new AuthenticationRequestConfiguration(
            "Logowanie biometryczne",
            "PotwierdŸ swoj¹ to¿samoœæ"
        ));

        if (authResult.Authenticated)
        {
            try
            {
                // Pobranie danych logowania z SecureStorage
                var email = await SecureStorage.GetAsync("email");
                var password = await SecureStorage.GetAsync("password");

                if (!string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(password))
                {
                    var user = await CrossFirebaseAuth.Current.Instance.SignInWithEmailAndPasswordAsync(email, password);
                    await DisplayAlert("Sukces", $"Witaj ponownie, {user.User.Email}!", "OK");
                    // PrzejdŸ do kolejnego widoku lub ekranu
                }
                else
                {
                    await DisplayAlert("B³¹d", "Nie znaleziono zapisanych danych logowania", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("B³¹d", ex.Message, "OK");
            }
        }
        else
        {
            await DisplayAlert("B³¹d", "Logowanie biometryczne nie powiod³o siê", "OK");
        }
    }
}