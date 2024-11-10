using aplikacja.Models;
using Microsoft.Maui.Controls;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;

namespace aplikacja.strony.zakladki;

public partial class zakladka3 : ContentPage
{
    public zakladka3()
    {
        InitializeComponent();
        //lista jêzyków
        List<string> languages = new List<string> { "English", "Polski" };
        LanguageListView.ItemsSource = languages;
    }

    private void OnSelectLanguageButtonClicked(object sender, EventArgs e)
    {
        // pokazuje lub ukrywa listy jêzyków po klikniêciu przycisku
        LanguageListView.IsVisible = !LanguageListView.IsVisible;
    }

    private void OnLanguageSelected(object sender, SelectionChangedEventArgs e)
    {
        string selectedLanguage = e.CurrentSelection[0] as string;

        // Tutaj dodaj logikê zmiany jêzyka (np. zapisanie preferencji u¿ytkownika)
        DisplayAlert("Language Selected", $"Selected language: {selectedLanguage}", "OK");

        // ukrywa listê po dokonaniu wyboru
        LanguageListView.IsVisible = false;
    }
}