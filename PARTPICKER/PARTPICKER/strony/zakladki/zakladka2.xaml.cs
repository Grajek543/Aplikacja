using System.Collections.ObjectModel;
using PARTPICKER.Models;
namespace PARTPICKER.strony.zakladki;

public partial class zakladka2 : ContentPage
{
	public zakladka2()
	{
		InitializeComponent();
	}

    private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        var parts = new ObservableCollection<ShopPart>(ShopPartList.SearchParts(((SearchBar)sender).Text));
        shoplist.ItemsSource = parts;
    }

    private async void toCartPage_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushModalAsync(new zakladki.CartPage());
    }

    private static readonly SolidColorBrush ButtonDownBrush = SolidColorBrush.Gray;
    private static readonly SolidColorBrush ButtonUpBrush = SolidColorBrush.IndianRed;

    public void ToCart_Clicked(object sender, EventArgs e)
    {
        //((Button)sender).Background = ButtonDownBrush;
    }
}