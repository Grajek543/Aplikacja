namespace aplikacja.strony;

public partial class strona3 : ContentPage
{
	public strona3()
	{
		InitializeComponent();
	}
    private void closebutton_click2(object sender, EventArgs e)
    {
        Navigation.PopModalAsync();
    }
}