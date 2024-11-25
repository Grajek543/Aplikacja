using System.Collections.ObjectModel;
using aplikacja.Models;
using Microsoft.Maui.Controls;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace aplikacja.strony.normal;

public partial class CartPage : ContentPage
{
	public CartPage()
	{
		InitializeComponent();
        var parts = new ObservableCollection<ShopPart>(ShopPartList.CartParts());
        shoplist.ItemsSource = parts;
        BindingContext = parts;
    }

    private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        var parts = new ObservableCollection<ShopPart>(ShopPartList.SearchParts(((SearchBar)sender).Text));
        shoplist.ItemsSource = parts;
    }
    
    private void ToCart_Toggled(object sender, ToggledEventArgs e)
    {
        /*var parts = new ObservableCollection<ShopPart>(ShopPartList.CartParts());
        shoplist.ItemsSource = parts;
        BindingContext = parts;*/
    }
}