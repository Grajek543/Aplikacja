namespace PARTPICKER.strony.zakladki;

public partial class zakladka5 : ContentPage
{
	public zakladka5()
	{
		InitializeComponent();
	}
    private async void Onnotlog(object sender, EventArgs e)
	{
        // 1) Rzutujemy Shell.Current na AppShell
        var mainShell = (AppShell)Shell.Current;

        // 2) Czyœcimy istniej¹ce ShellContent w Tab4
        mainShell.Tab4.Items.Clear();

        // 3) Dodajemy nowy ShellContent z zakladka5
        mainShell.Tab4.Items.Add(new ShellContent
        {
            ContentTemplate = new DataTemplate(typeof(zakladka4))
        });

        // 4) Prze³¹czamy siê ponownie na Tab4 (z now¹ zawartoœci¹)
        mainShell.CurrentItem = mainShell.Tab4;
    }
}