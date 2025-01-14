using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#if Windows
using PARTPICKER.Services;

namespace PARTPICKER.Platforms.Windows
{
    // Windows nie udostępnia publicznego API do odczytu z fizycznego czujnika światła
    public class LightSensorService : ILightSensorService
    {
        public event EventHandler<float>? ReadingChanged;

        public void Start()
        {
            // Brak implementacji
        }

        public void Stop()
        {
            // Brak implementacji
        }
    }
}
#endif
