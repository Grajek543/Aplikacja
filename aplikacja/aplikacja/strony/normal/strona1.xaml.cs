namespace aplikacja.strony;

public partial class strona1 : ContentPage
{
	public strona1()
	{
		InitializeComponent();
	}
	private void clickstrona2_click(object sender, EventArgs e)
	{
		Navigation.PushModalAsync(new strona2());
	}
}