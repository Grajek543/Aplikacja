using CommunityToolkit.Mvvm.Input;
using PARTPICKER.Models;
using PARTPICKER.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PARTPICKER.ViewModels
{
    public partial class SPart
    {
        FirestoreService firestoreService;

        public ObservableCollection<ShopPart> ShopPartList { get; set; } = [];

        public SPart(FirestoreService firestoreService)
        {
            this.firestoreService = firestoreService;
        }

        public List<ShopPart> SearchParts(string filterText)
        {
            var parts = ShopPartList.Where(x => !string.IsNullOrWhiteSpace(x.Name) && x.Name.Contains(filterText, StringComparison.OrdinalIgnoreCase) || !string.IsNullOrWhiteSpace(x.Type) && x.Type.Contains(filterText, StringComparison.OrdinalIgnoreCase))?.ToList();
            return parts;
        }

        [RelayCommand]
        public async Task GetPartData()
        {
            ShopPartList.Clear();
            var x = await firestoreService.GetShopParts();
            foreach (var item in x)
            {
                ShopPartList.Add(item);
            }
        }

        [RelayCommand]
        public async Task SavePartData()
        {
            var samples = new List<ShopPart>()
            {
                new ShopPart { Id="1", Name="Ab", Type="CPU", Price=2.40, Cart = true},
                new ShopPart { Id="2", Name="Bc", Type="PSU", Price=142.45, Cart = true},
                new ShopPart { Id="3", Name="Cd", Type="HDD", Price=50.31, Cart = false},
                new ShopPart { Id="4", Name="De", Type="GPU", Price=99.99, Cart = false},
                new ShopPart { Id="5", Name="Ef", Type="CPU", Price=7.00, Cart = false},
                new ShopPart { Id="6", Name="Fg", Type="SSD", Price=537.77, Cart = true},
                new ShopPart { Id="7", Name="Gh", Type="Case", Price=70.50, Cart = false}
            };
            foreach (var item in samples)
            {
                await firestoreService.InsertShopParts(item); ;
            }
            /*var sample = new ShopPart
            {
                Id="1", Name="Ab", Type="CPU", Price=2.40, Cart = true,
            };
            await firestoreService.InsertShopParts(sample);*/
        }
    }
}
