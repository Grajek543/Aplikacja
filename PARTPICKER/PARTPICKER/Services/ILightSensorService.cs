using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PARTPICKER.Services
{
    public interface ILightSensorService
    {
        /// <summary>
        /// Wywoływane, gdy czujnik zwróci nową wartość światła (w luksach).
        /// </summary>
        event EventHandler<float> ReadingChanged;

        /// <summary>
        /// Rozpocznij nasłuchiwanie czujnika światła.
        /// </summary>
        void Start();

        /// <summary>
        /// Zatrzymaj nasłuchiwanie czujnika światła.
        /// </summary>
        void Stop();
    }
}
