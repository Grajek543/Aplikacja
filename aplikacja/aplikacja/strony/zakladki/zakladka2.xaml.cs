using aplikacja.Models;
using Microsoft.Maui.Controls;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace aplikacja.strony.zakladki;

public partial class zakladka2 : ContentPage
{
	public zakladka2()
    {
        InitializeComponent();
        var parts = new ObservableCollection<ShopPart>(ShopPartList.GetShopParts());
        shoplist.ItemsSource = parts;
    }

	

	

    private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        var parts = new ObservableCollection<ShopPart>(ShopPartList.SearchParts(((SearchBar)sender).Text));
        shoplist.ItemsSource = parts;
    }
}