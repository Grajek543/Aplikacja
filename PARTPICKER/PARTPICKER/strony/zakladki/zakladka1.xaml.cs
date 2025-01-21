using System.Collections.ObjectModel;

namespace PARTPICKER.strony.zakladki
{
    public partial class zakladka1 : ContentPage
    {
        // Kolekcje z przyk³adowymi danymi
        public ObservableCollection<string> CpuList { get; set; }
        public ObservableCollection<string> GpuList { get; set; }
        public ObservableCollection<string> RamList { get; set; }
        public ObservableCollection<string> MoboList { get; set; }
        public ObservableCollection<string> CaseList { get; set; }
        public ObservableCollection<string> PsuList { get; set; }
        public ObservableCollection<string> StorageList { get; set; }
        public ObservableCollection<string> CoolingList { get; set; }

        public zakladka1()
        {
            InitializeComponent();

            // Inicjalizacja list przyk³adowymi danymi (mo¿esz rozszerzyæ)
            CpuList = new ObservableCollection<string>
            {
                "Intel Core i9-13900K",
                "Intel Core i5-13600K",
                "AMD Ryzen 9 7950X",
                "AMD Ryzen 5 7600X"
            };

            GpuList = new ObservableCollection<string>
            {
                "NVIDIA GeForce RTX 4090",
                "NVIDIA GeForce RTX 4070 Ti",
                "AMD Radeon RX 7900 XTX",
                "AMD Radeon RX 6800 XT"
            };

            RamList = new ObservableCollection<string>
            {
                "G.SKILL Trident Z5 32GB DDR5-6000",
                "Corsair Vengeance LPX 16GB DDR4-3200",
                "Kingston Fury Beast 16GB DDR4-3600"
            };

            MoboList = new ObservableCollection<string>
            {
                "ASUS ROG STRIX Z790-E Gaming",
                "ASRock B650M Pro RS",
                "MSI MAG B660 Tomahawk",
                "Gigabyte X670 AORUS Master"
            };

            CaseList = new ObservableCollection<string>
            {
                "Fractal Design Meshify C",
                "NZXT H510",
                "Corsair 4000D Airflow",
                "be quiet! Pure Base 500DX"
            };

            PsuList = new ObservableCollection<string>
            {
                "Seasonic Focus GX-750 750W",
                "Corsair RM750x 750W",
                "be quiet! Straight Power 11 750W",
                "EVGA SuperNOVA 850 G3"
            };

            StorageList = new ObservableCollection<string>
            {
                "Samsung 970 EVO Plus 1TB M.2",
                "WD Black SN850 1TB M.2",
                "Crucial MX500 1TB SATA",
                "Seagate Barracuda 2TB HDD"
            };

            CoolingList = new ObservableCollection<string>
            {
                "Noctua NH-D15",
                "be quiet! Dark Rock Pro 4",
                "Corsair iCUE H100i Elite AIO",
                "NZXT Kraken Z63"
            };

            // Przypisujemy kontekst danych do strony, by mo¿na by³o u¿ywaæ {Binding}
            BindingContext = this;
        }

        // ======= Klikniêcia przycisków do rozwijania/zamykania list =======

        private void OnCpuButtonClicked(object sender, EventArgs e)
        {
            // Otwórz/Zamknij listê
            CpuExpandableList.IsVisible = !CpuExpandableList.IsVisible;
        }

        private void OnGpuButtonClicked(object sender, EventArgs e)
        {
            GpuExpandableList.IsVisible = !GpuExpandableList.IsVisible;
        }

        private void OnRamButtonClicked(object sender, EventArgs e)
        {
            RamExpandableList.IsVisible = !RamExpandableList.IsVisible;
        }

        private void OnMoboButtonClicked(object sender, EventArgs e)
        {
            MoboExpandableList.IsVisible = !MoboExpandableList.IsVisible;
        }

        private void OnCaseButtonClicked(object sender, EventArgs e)
        {
            CaseExpandableList.IsVisible = !CaseExpandableList.IsVisible;
        }

        private void OnPsuButtonClicked(object sender, EventArgs e)
        {
            PsuExpandableList.IsVisible = !PsuExpandableList.IsVisible;
        }

        private void OnStorageButtonClicked(object sender, EventArgs e)
        {
            StorageExpandableList.IsVisible = !StorageExpandableList.IsVisible;
        }

        private void OnCoolingButtonClicked(object sender, EventArgs e)
        {
            CoolingExpandableList.IsVisible = !CoolingExpandableList.IsVisible;
        }

        // ======= Obs³uga wyboru (tapniêcia) elementów w listach =======

        private void CpuExpandableList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = e.CurrentSelection.FirstOrDefault() as string;
            if (selectedItem != null)
            {
                // Ustaw tekst przycisku na wybrany element
                CpuSelectionButton.Text = selectedItem;
                // (opcjonalnie) Zwiñ listê
                CpuExpandableList.IsVisible = false;
                // Wyczyœæ zaznaczenie (by móc zareagowaæ ponownie na to samo w przysz³oœci)
                ((CollectionView)sender).SelectedItem = null;
            }
        }

        private void GpuExpandableList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = e.CurrentSelection.FirstOrDefault() as string;
            if (selectedItem != null)
            {
                GpuSelectionButton.Text = selectedItem;
                GpuExpandableList.IsVisible = false;
                ((CollectionView)sender).SelectedItem = null;
            }
        }

        private void RamExpandableList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = e.CurrentSelection.FirstOrDefault() as string;
            if (selectedItem != null)
            {
                RamSelectionButton.Text = selectedItem;
                RamExpandableList.IsVisible = false;
                ((CollectionView)sender).SelectedItem = null;
            }
        }

        private void MoboExpandableList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = e.CurrentSelection.FirstOrDefault() as string;
            if (selectedItem != null)
            {
                MoboSelectionButton.Text = selectedItem;
                MoboExpandableList.IsVisible = false;
                ((CollectionView)sender).SelectedItem = null;
            }
        }

        private void CaseExpandableList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = e.CurrentSelection.FirstOrDefault() as string;
            if (selectedItem != null)
            {
                CaseSelectionButton.Text = selectedItem;
                CaseExpandableList.IsVisible = false;
                ((CollectionView)sender).SelectedItem = null;
            }
        }

        private void PsuExpandableList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = e.CurrentSelection.FirstOrDefault() as string;
            if (selectedItem != null)
            {
                PsuSelectionButton.Text = selectedItem;
                PsuExpandableList.IsVisible = false;
                ((CollectionView)sender).SelectedItem = null;
            }
        }

        private void StorageExpandableList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = e.CurrentSelection.FirstOrDefault() as string;
            if (selectedItem != null)
            {
                StorageSelectionButton.Text = selectedItem;
                StorageExpandableList.IsVisible = false;
                ((CollectionView)sender).SelectedItem = null;
            }
        }

        private void CoolingExpandableList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = e.CurrentSelection.FirstOrDefault() as string;
            if (selectedItem != null)
            {
                CoolingSelectionButton.Text = selectedItem;
                CoolingExpandableList.IsVisible = false;
                ((CollectionView)sender).SelectedItem = null;
            }
        }
    }
}
