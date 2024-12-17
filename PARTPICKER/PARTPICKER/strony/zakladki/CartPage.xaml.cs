using System.Collections.ObjectModel;
using PARTPICKER.Models;
namespace PARTPICKER.strony.zakladki;

public partial class CartPage : ContentPage
{
	public CartPage()
	{
		InitializeComponent();
<<<<<<< HEAD:aplikacja/aplikacja/strony/normal/CartPage.xaml.cs
        var parts = new ObservableCollection<ShopPart>(ShopPartList.CartParts());
        shoplist.ItemsSource = parts;
        BindingContext = parts;
    }
=======
	}
>>>>>>> main:PARTPICKER/PARTPICKER/strony/zakladki/CartPage.xaml.cs

    private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        var parts = new ObservableCollection<ShopPart>(ShopPartList.SearchParts(((SearchBar)sender).Text));
        shoplist.ItemsSource = parts;
    }
<<<<<<< HEAD:aplikacja/aplikacja/strony/normal/CartPage.xaml.cs
    
    private void ToCart_Toggled(object sender, ToggledEventArgs e)
    {
        /*var parts = new ObservableCollection<ShopPart>(ShopPartList.CartParts());
        shoplist.ItemsSource = parts;
        BindingContext = parts;*/
    }
=======
>>>>>>> main:PARTPICKER/PARTPICKER/strony/zakladki/CartPage.xaml.cs
}