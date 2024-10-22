namespace aplikacja.strony.navigacja;

public partial class stronanav3 : ContentPage
{
	public stronanav3()
	{
		InitializeComponent();
	}
    private void closebutton_click2(object sender, EventArgs e)
    {
        Navigation.PopAsync();
    }
}