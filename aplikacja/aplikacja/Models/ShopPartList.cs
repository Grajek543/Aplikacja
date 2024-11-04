using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace aplikacja.Models
{
    public static class ShopPartList
    {
        public static List<ShopPart> _parts = new List<ShopPart>()
        {
            new ShopPart { Name="Ab", Type="CPU"},
            new ShopPart { Name="Bc", Type="PSU"},
            new ShopPart { Name="Cd", Type="HDD"},
            new ShopPart { Name="De", Type="GPU"},
            new ShopPart { Name="Ef", Type="CPU"},
            new ShopPart { Name="Fg", Type="SSD"},
            new ShopPart { Name="Gh", Type="Case"}
        };

        public static List<ShopPart> GetShopParts() => _parts;
        public static List<ShopPart> SearchParts(string filterText)
        {
            var parts = _parts.Where(x => !string.IsNullOrWhiteSpace(x.Name) && x.Name.Contains(filterText, StringComparison.OrdinalIgnoreCase) || !string.IsNullOrWhiteSpace(x.Type) && x.Type.Contains(filterText, StringComparison.OrdinalIgnoreCase))?.ToList();
            return parts;
        }
    }
}
