using Microsoft.Extensions.Logging;

namespace aplikacja
{
    public static class MauiProgram
    {
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

            return builder.Build();
        }
    }
}
