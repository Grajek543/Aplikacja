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

    private async void OnLoginClicked(object sender, EventArgs e)
    {
        string email = EmailEntry?.Text;
        string password = PasswordEntry?.Text;

        try
        {
            var user = await CrossFirebaseAuth.Current.Instance
                         .SignInWithEmailAndPasswordAsync(email, password);

            await SecureStorage.SetAsync("email", email);
            await SecureStorage.SetAsync("password", password);

            await DisplayAlert("Sukces", $"Witaj, {user.User.Email}!", "OK");

            // 1) Rzutujemy Shell.Current na AppShell
            var mainShell = (AppShell)Shell.Current;

            // 2) Czyœcimy istniej¹ce ShellContent w Tab4
            mainShell.Tab4.Items.Clear();

            // 3) Dodajemy nowy ShellContent z zakladka5
            mainShell.Tab4.Items.Add(new ShellContent
            {
                ContentTemplate = new DataTemplate(typeof(zakladka5))
            });

            // 4) Prze³¹czamy siê ponownie na Tab4 (z now¹ zawartoœci¹)
            mainShell.CurrentItem = mainShell.Tab4;
        }
        catch (Exception ex)
        {
            await DisplayAlert("B³¹d", ex.Message, "OK");
        }
    }

    private async void OnBiometricLoginClicked(object sender, EventArgs e)
    {
        var authResult = await CrossFingerprint.Current.AuthenticateAsync(
            new AuthenticationRequestConfiguration("Logowanie biometryczne", "PotwierdŸ swoj¹ to¿samoœæ"));

        if (authResult.Authenticated)
        {
            try
            {
                var email = await SecureStorage.GetAsync("email");
                var password = await SecureStorage.GetAsync("password");

                if (!string.IsNullOrEmpty(email) && !string.IsNullOrEmpty(password))
                {
                    var user = await CrossFirebaseAuth.Current.Instance
                                 .SignInWithEmailAndPasswordAsync(email, password);

                    await DisplayAlert("Sukces", $"Witaj ponownie, {user.User.Email}!", "OK");

                    // 1) Rzutujemy Shell.Current na AppShell
                    var mainShell = (AppShell)Shell.Current;

                    // 2) Czyœcimy istniej¹ce ShellContent w Tab4
                    mainShell.Tab4.Items.Clear();

                    // 3) Dodajemy nowy ShellContent z zakladka5
                    mainShell.Tab4.Items.Add(new ShellContent
                    {
                        ContentTemplate = new DataTemplate(typeof(zakladka5))
                    });

                    // 4) Prze³¹czamy siê na Tab4 (z now¹ zawartoœci¹)
                    mainShell.CurrentItem = mainShell.Tab4;
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