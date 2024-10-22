namespace aplikacja.strony.navigacja;

public partial class stronanav2 : ContentPage
{
	public stronanav2()
	{
		InitializeComponent();
	}
    private void closebutton_click(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }

    private void navstrona3_click(object sender, EventArgs e)
    {
        Navigation.PushAsync(new stronanav3());
    }
}