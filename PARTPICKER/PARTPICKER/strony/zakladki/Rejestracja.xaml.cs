namespace PARTPICKER.strony.zakladki;
using Plugin.FirebaseAuth;

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

    async void OnRegisterClicked(object sender, EventArgs e)
    {
        string email = EmailEntry.Text; // Pobiera e-mail z pola
        string password = PasswordEntry.Text; // Pobiera has³o z pola

        try
        {
            var user = await CrossFirebaseAuth.Current.Instance.CreateUserWithEmailAndPasswordAsync(email, password);
            await DisplayAlert("Sukces", $"Utworzono konto: {user.User.Email}!", "OK");
            await Navigation.PopAsync(); // Powrót na ekran logowania
        }
        catch (Exception ex)
        {
            await DisplayAlert("B³¹d", ex.Message, "OK");
        }
    }
}