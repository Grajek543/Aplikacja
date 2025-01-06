using System.Collections.ObjectModel;
using PARTPICKER.Models;
using PARTPICKER.Services;
using PARTPICKER.ViewModels;

namespace PARTPICKER.strony.zakladki;

public partial class zakladka2 : ContentPage
{
    private FirestoreService firestoreService;
    private SPart vm;

    public zakladka2()
    {
        InitializeComponent();
        InitializeFirebase();
    }

    private async void InitializeFirebase()
    {
        firestoreService = new FirestoreService();
        vm = new SPart(firestoreService);
        BindingContext = vm;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        if (vm.ShopPartList == null || !vm.ShopPartList.Any())
        {
            await vm.GetPartData();
        }
    }

    private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        if (vm == null || sender == null || !(sender is SearchBar searchBar))
        {
            return;
        }
        var parts = new ObservableCollection<ShopPart>(vm.SearchParts(((SearchBar)sender).Text));
        if (parts == null) return;
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
