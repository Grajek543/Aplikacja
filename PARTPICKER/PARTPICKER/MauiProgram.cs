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
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                    fonts.AddFont("DynaPuff.ttf", "Dynapuff");
                    fonts.AddFont("NerkoOne.ttf", "Nerkoone");
                    fonts.AddFont("Rubik.ttf", "Rubik");
                    fonts.AddFont("Tiny5.ttf", "Tiny5");
                    fonts.AddFont("YatraOne.ttf", "Yatra");
                });

#if DEBUG
            builder.Logging.AddDebug();
#endif
            builder.Services.AddSingleton<FirestoreService>();
            builder.Services.AddTransient<SampleVM>();
            builder.Services.AddTransient<NewPage1>();

#if ANDROID
            // Rejestracja LightSensorService tylko na Androidzie
            builder.Services.AddSingleton<ILightSensorService, LightSensorService>();
#elif IOS
            // Na iOS czujnik światła nie jest oficjalnie dostępny,
#else
            // Na pozostałych platformach (Windows, MacCatalyst) także można dodać stub, np.:
            // builder.Services.AddSingleton<ILightSensorService, LightSensorServiceStub>();
#endif

            // Budujemy obiekt MauiApp i zapamiętujemy go w statycznym polu
            var app = builder.Build();
            AppInstance = app;
            return app;
        }
    }
}
