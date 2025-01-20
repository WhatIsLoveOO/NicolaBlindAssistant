using Microsoft.Maui.Controls;

namespace NicolaBlindAssistant;

public partial class App : Application
{
    public App()
    {
        InitializeComponent();

        MainPage = new AppShell();
    }
}