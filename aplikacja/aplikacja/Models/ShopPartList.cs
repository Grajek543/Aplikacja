using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace aplikacja.Models
{
    public static class ShopPartList
    {
        public static List<ShopPart> _parts = new List<ShopPart>()
        {
            new ShopPart { Name="Ab", Type="CPU", Price=2.40, Cart=false},
            new ShopPart { Name="Bc", Type="PSU", Price=142.45, Cart=false},
            new ShopPart { Name="Cd", Type="HDD", Price=50.31, Cart = false},
            new ShopPart { Name="De", Type="GPU", Price=99.99, Cart = false},
            new ShopPart { Name="Ef", Type="CPU", Price=7.00, Cart = false},
            new ShopPart { Name="Fg", Type="SSD", Price=537.77, Cart = false},
            new ShopPart { Name="Gh", Type="Case", Price=70.50, Cart = false}
        };

        public static List<ShopPart> GetShopParts() => _parts;
        public static List<ShopPart> SearchParts(string filterText)
        {
            var parts = _parts.Where(x => !string.IsNullOrWhiteSpace(x.Name) && x.Name.Contains(filterText, StringComparison.OrdinalIgnoreCase) || !string.IsNullOrWhiteSpace(x.Type) && x.Type.Contains(filterText, StringComparison.OrdinalIgnoreCase))?.ToList();
            return parts;
        }
        public static bool AddCart() { 
            return true;
        }
    }
}
