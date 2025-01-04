using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PARTPICKER.Services
{
    public interface IThemeManager
    {
        /// <summary>
        /// Ustawia wybrany przez użytkownika motyw: "Light", "Dark", "Auto".
        /// </summary>
        /// <param name="theme">Motyw użytkownika.</param>
        void SetUserSelectedTheme(string theme);

        /// <summary>
        /// Zwraca aktualnie wybrany motyw przez użytkownika ("Light", "Dark", "Auto").
        /// </summary>
        string GetUserSelectedTheme();
    }
}
