using PARTPICKER.Services;
using PARTPICKER.ViewModels;

namespace PARTPICKER.strony.zakladki;

public partial class NewPage1 : ContentPage
{
    public NewPage1()

    {
        InitializeComponent();
    }
    public NewPage1(SampleVM vm)

    {
		InitializeComponent();
        BindingContext = vm;
    }
    
}