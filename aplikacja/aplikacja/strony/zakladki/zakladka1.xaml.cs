using Microsoft.Maui.Controls;
using aplikacja.Models; // Upewnij się, że masz poprawną przestrzeń nazw
using aplikacja.Services; // Upewnij się, że masz poprawną przestrzeń nazw
using System.Collections.Generic;
using System.Linq;

namespace aplikacja.strony.zakladki
{
    public partial class zakladka1 : TabbedPage
    {
        private readonly FirebirdDataService _firebirdDataService;
        private string _selectedItem;
        private CollectionView _currentExpandableList; // Przechowuj aktualną listę

        public zakladka1()
        {
            InitializeComponent();
            _firebirdDataService = new FirebirdDataService();
            LoadItems();
        }

        // Upewnij się, że metoda ma prawidłowy podpis
        private void OnItemSelected(object sender, SelectionChangedEventArgs e)
        {
            if (e.CurrentSelection.Count > 0)
            {
                _selectedItem = e.CurrentSelection[0] as string;

                // Ustaw tekst przycisku na wybrany element
                var button = sender as Button;
                if (button != null)
                {
                    button.Text = _selectedItem; // Ustaw tekst na przycisku, który został naciśnięty
                }

                // Ukryj listę po wyborze
                if (_currentExpandableList != null)
                {
                    _currentExpandableList.IsVisible = false;
                }

                // Wyczyszczenie zaznaczenia, aby możliwe było ponowne wybranie tego samego elementu
                if (_currentExpandableList != null)
                {
                    _currentExpandableList.SelectedItem = null;
                }
            }
        }

        private async void LoadItems()
        {
            try
            {
                var items = await _firebirdDataService.GetItemsAsync();
                // W każdej sekcji inicjalizuj różne kolekcje
                CpuExpandableList.ItemsSource = items; // Dostosuj do odpowiedniej listy
                GpuExpandableList.ItemsSource = items; // Dostosuj do odpowiedniej listy
                MotherboardExpandableList.ItemsSource = items; // Dostosuj do odpowiedniej listy
                RamExpandableList.ItemsSource = items; // Dostosuj do odpowiedniej listy
                CaseExpandableList.ItemsSource = items; // Dostosuj do odpowiedniej listy
                PsuExpandableList.ItemsSource = items; // Dostosuj do odpowiedniej listy
                CpuCoolerExpandableList.ItemsSource = items; // Dostosuj do odpowiedniej listy
            }
            catch (Exception ex)
            {
                await DisplayAlert("Błąd", $"Nie udało się załadować danych: {ex.Message}", "OK");
            }
        }

        private void OnSelectedItemButtonClicked(object sender, EventArgs e)
        {
            var button = sender as Button;
            if (button != null)
            {
                var associatedList = GetExpandableListForButton(button);
                if (associatedList != null)
                {
                    associatedList.IsVisible = !associatedList.IsVisible; // Przełącz widoczność listy
                    _currentExpandableList = associatedList; // Zapisz aktualnie otwartą listę
                }
            }
        }

        private CollectionView GetExpandableListForButton(Button button)
        {
            // Zwróć odpowiednią listę w zależności od przycisku
            return button.Text switch
            {
                "CPU" => CpuExpandableList,
                "GPU" => GpuExpandableList,
                "Motherboard" => MotherboardExpandableList,
                "RAM" => RamExpandableList,
                "Case" => CaseExpandableList,
                "PSU" => PsuExpandableList,
                "CPU cooler" => CpuCoolerExpandableList,
                _ => null,
            };
        }
    }
}
