using System.Collections.Generic;
using System.Linq;
using PARTPICKER.Models;

namespace PARTPICKER.Models
{
    public static class ShopPartList
    {
        // Statyczna lista dostępnych części w "sklepie"
        // Możesz dowolnie rozszerzyć tę listę o kolejne elementy
        private static readonly List<ShopPart> allParts = new List<ShopPart>
        {
            new ShopPart { Name = "Intel Core i5-13600K", Type = "CPU", Cena = 1500m },
            new ShopPart { Name = "Intel Core i9-13900K", Type = "CPU", Cena = 3000m },
            new ShopPart { Name = "AMD Ryzen 5 7600X",   Type = "CPU", Cena = 1400m },
            new ShopPart { Name = "AMD Ryzen 9 7950X",   Type = "CPU", Cena = 3200m },

            new ShopPart { Name = "NVIDIA GeForce RTX 4090", Type = "GPU", Cena = 9000m },
            new ShopPart { Name = "NVIDIA GeForce RTX 4070 Ti", Type = "GPU", Cena = 4200m },
            new ShopPart { Name = "AMD Radeon RX 7900 XTX", Type = "GPU", Cena = 4400m },
            new ShopPart { Name = "AMD Radeon RX 6800 XT", Type = "GPU", Cena = 2800m },

            new ShopPart { Name = "G.SKILL Trident Z5 32GB DDR5-6000", Type = "RAM", Cena = 850m },
            new ShopPart { Name = "Corsair Vengeance LPX 16GB DDR4-3200", Type = "RAM", Cena = 300m },
            
            // ... reszta komponentów, np. płyty główne, dyski, chłodzenia, itp.
            new ShopPart { Name = "ASUS ROG STRIX Z790-E", Type = "MOBO", Cena = 1600m },
            new ShopPart { Name = "MSI MAG B660 Tomahawk", Type = "MOBO", Cena = 800m },

            new ShopPart { Name = "Samsung 970 EVO Plus 1TB", Type = "SSD", Cena = 400m },
            new ShopPart { Name = "Seagate Barracuda 2TB", Type = "HDD", Cena = 200m },

            new ShopPart { Name = "Noctua NH-D15", Type = "Cooling", Cena = 400m },
            new ShopPart { Name = "Corsair iCUE H100i", Type = "Cooling", Cena = 600m },

            new ShopPart { Name = "Corsair RM750x 750W", Type = "PSU", Cena = 500m },
            new ShopPart { Name = "be quiet! Straight Power 11 750W", Type = "PSU", Cena = 600m },

            new ShopPart { Name = "Fractal Design Meshify C", Type = "Case", Cena = 400m },
            new ShopPart { Name = "NZXT H510", Type = "Case", Cena = 350m }
        };

        /// <summary>
        /// Zwraca pełną listę części.
        /// </summary>
        public static IEnumerable<ShopPart> GetAllParts()
        {
            return allParts;
        }

        /// <summary>
        /// Zwraca części, które w polu Name lub Type
        /// zawierają wpisany fragment tekstu (filtrowane bez rozróżniania wielkości liter).
        /// </summary>
        public static IEnumerable<ShopPart> SearchParts(string query)
        {
            if (string.IsNullOrWhiteSpace(query))
            {
                // Jeśli nie ma żadnej frazy, zwracamy całą listę
                return allParts;
            }

            query = query.ToLower();
            return allParts.Where(p =>
                p.Name.ToLower().Contains(query) ||
                p.Type.ToLower().Contains(query));
        }
    }
}
