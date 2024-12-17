using System.Collections.ObjectModel;
using PARTPICKER.Models;
namespace PARTPICKER.strony.zakladki;

public partial class zakladka2 : ContentPage
{
<<<<<<< HEAD:aplikacja/aplikacja/strony/zakladki/zakladka2.xaml.cs
    public zakladka2()
    {
        InitializeComponent();
        var parts = new ObservableCollection<ShopPart>(ShopPartList.GetShopParts());
        shoplist.ItemsSource = parts;
        BindingContext = parts;
    }
=======
	public zakladka2()
	{
		InitializeComponent();
	}
>>>>>>> main:PARTPICKER/PARTPICKER/strony/zakladki/zakladka2.xaml.cs

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

    /*public void ToCart_Clicked(object sender, EventArgs e)
    {
<<<<<<< HEAD:aplikacja/aplikacja/strony/zakladki/zakladka2.xaml.cs
        ((Button)sender).Background = ButtonDownBrush;
    }*/
}
=======
        //((Button)sender).Background = ButtonDownBrush;
    }
}
>>>>>>> main:PARTPICKER/PARTPICKER/strony/zakladki/zakladka2.xaml.cs
