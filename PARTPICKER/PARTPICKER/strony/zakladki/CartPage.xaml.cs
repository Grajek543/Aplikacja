using System.Collections.ObjectModel;
using PARTPICKER.Models;
namespace PARTPICKER.strony.zakladki;

public partial class CartPage : ContentPage
{
	public CartPage()
	{
		InitializeComponent();
	}

    private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        var parts = new ObservableCollection<ShopPart>(ShopPartList.SearchParts(((SearchBar)sender).Text));
        shoplist.ItemsSource = parts;
    }
}