using System.Collections.ObjectModel;
using PARTPICKER.Models;

namespace PARTPICKER.strony.zakladki;

public partial class zakladka2 : ContentPage
{
    // Kolekcja z przefiltrowan� list� cz�ci
    private ObservableCollection<ShopPart> _filteredParts = new ObservableCollection<ShopPart>();

    // Kolekcja cz�ci dodanych do "koszyka" w tej zak�adce
    private ObservableCollection<ShopPart> _cart = new ObservableCollection<ShopPart>();

    public zakladka2()
    {
        InitializeComponent();

        // Wczytaj wszystkie cz�ci (przyk�adowo z ShopPartList)
        _filteredParts = new ObservableCollection<ShopPart>(ShopPartList.GetAllParts());

        // Pod��cz do CollectionView
        shoplist.ItemsSource = _filteredParts;

        // Na start oblicz sum� (0)
        UpdateSumLabel();
    }

    private void SearchBar_TextChanged(object sender, TextChangedEventArgs e)
    {
        var text = ((SearchBar)sender).Text;
        // Filtrujemy wg metody SearchParts (z klasy ShopPartList)
        _filteredParts = new ObservableCollection<ShopPart>(ShopPartList.SearchParts(text));
        shoplist.ItemsSource = _filteredParts;
    }

    private async void toCartPage_Clicked(object sender, EventArgs e)
    {
        // Przyk�adowa nawigacja do innej strony (je�li potrzebna)
        await Navigation.PushModalAsync(new zakladki.CartPage());
    }

    // Obs�uga dodawania do koszyka
    private void ToCart_Clicked(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var selectedPart = (ShopPart)button.BindingContext;
        if (selectedPart != null)
        {
            _cart.Add(selectedPart);
            // Po dodaniu zaktualizuj sum�
            UpdateSumLabel();
        }
    }

    // Aktualizuje tekst w SumLabel, np. Suma: 123,45
    private void UpdateSumLabel()
    {
        decimal sum = 0m;
        foreach (var part in _cart)
        {
            sum += part.Cena;
        }

        // Formatowanie kwoty do dw�ch miejsc po przecinku
        SumLabel.Text = sum.ToString("N2");
    }
}
