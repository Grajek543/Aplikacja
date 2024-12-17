using System.Collections.ObjectModel;
using PARTPICKER.Models;
using PARTPICKER.Services;
using PARTPICKER.ViewModels;

namespace PARTPICKER.strony.zakladki;

public partial class zakladka2 : ContentPage
{
    public zakladka2()
    {
        var firestoreService = new FirestoreService();
        var vm = new SPart(firestoreService);
        InitializeComponent();
        BindingContext = vm;
    }

    public zakladka2(SPart vm)
    {
        InitializeComponent();
        BindingContext = vm;
    }

    private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        /*if (sPartService == null || sender == null || !(sender is SearchBar searchBar))
        {

            return;
        }
        var parts = new ObservableCollection<ShopPart>(SPart.SearchParts(((SearchBar)sender).Text));
        if (parts == null) return;
        shoplist.ItemsSource = parts;*/
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
