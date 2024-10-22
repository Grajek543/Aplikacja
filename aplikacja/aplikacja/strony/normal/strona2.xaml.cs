namespace aplikacja.strony;

public partial class strona2 : ContentPage
{
	public strona2()
	{
		InitializeComponent();
	}
    
	private void closebutton_click(object sender, EventArgs e)
	{
		Navigation.PopModalAsync();	
	}

	private void strona3_click(object sender, EventArgs e)
	{
		Navigation.PushModalAsync(new strona3());
	}
}