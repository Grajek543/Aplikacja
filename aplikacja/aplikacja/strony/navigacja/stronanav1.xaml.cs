namespace aplikacja.strony.navigacja;

public partial class stronanav1 : ContentPage
{
	public stronanav1()
	{
		InitializeComponent();
	}
    private void navclickstrona2_click(object sender, EventArgs e)
    {
        Navigation.PushAsync(new stronanav2());
    }
}