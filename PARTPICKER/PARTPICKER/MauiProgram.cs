using PARTPICKER.ViewModels;
using Microsoft.Extensions.Logging;
using PARTPICKER.Services;
using PARTPICKER.strony.zakladki;


#if ANDROID
using PARTPICKER.Platforms.Android;
#endif
#if IOS
using PARTPICKER.Platforms.iOS;
#endif
using PARTPICKER.Services; // <-- nasz ThemeManager i ILightSensorService

namespace PARTPICKER
{
    public static class MauiProgram
    {
        public static MauiApp AppInstance { get; private set; } = null!;

        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(/*...*/);

#if DEBUG
            builder.Logging.AddDebug();
#endif
            // Twoje usługi:
            builder.Services.AddSingleton<FirestoreService>();
            builder.Services.AddTransient<SampleVM>();
            builder.Services.AddTransient<NewPage1>();

#if ANDROID
            // Czujnik światła na Androidzie
            builder.Services.AddSingleton<ILightSensorService, LightSensorService>();
#else
            // Stub lub brak rejestracji na innych platformach
            // builder.Services.AddSingleton<ILightSensorService, LightSensorServiceStub>();
#endif

            // Dodajemy nasz ThemeManager, który globalnie będzie nasłuchiwał czujnika i zmieniał motywy
            builder.Services.AddSingleton<IThemeManager, ThemeManager>();

            var app = builder.Build();
            AppInstance = app;
            return app;
        }
    }
}
