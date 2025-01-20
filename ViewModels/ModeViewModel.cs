using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using Microsoft.Maui.Controls;
using CommunityToolkit.Maui.Alerts;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using CommunityToolkit.Maui.Core;
using CommunityToolkit.Maui.Media;
using Microsoft.Maui.Media;

namespace NicolaBlindAssistant.ViewModels
{
    public class ModeViewModel : INotifyPropertyChanged
    {
        private string _currentMode = "Select Your Mode";

        public string CurrentMode
        {
            get => _currentMode;
            set
            {
                if (_currentMode != value)
                {
                    _currentMode = value;
                    OnPropertyChanged();
                }
            }
        }

        public ICommand SetModeCommand { get; }
        public ICommand ExecuteCurrentModeCommand { get; }

        public ModeViewModel()
        {
            SetModeCommand = new Command<string>(SetMode);
            ExecuteCurrentModeCommand = new Command(ExecuteCurrentMode);
        }

        private void SetMode(string mode)
        {
            CurrentMode = mode;
            Application.Current.MainPage.DisplayAlert("Режим вибрано", $"Ви вибрали: {mode}", "OK");
        }

        private async void ExecuteCurrentMode()
        {
            switch (CurrentMode)
            {
                case "AI Recognize":
                    await Application.Current.MainPage.DisplayAlert("AI Recognize", "Розпізнавання об'єктів.", "OK");
                    break;

                case "Text to Speech":
                    ExecuteTextToSpeech();
                    break;

                case "Speech to Text":
                    await Application.Current.MainPage.DisplayAlert("Speech to Text", "Перетворення мови на текст.", "OK");
                    break;

                case "Magnifier":
                    await Application.Current.MainPage.DisplayAlert("Magnifier", "Збільшувальне скло.", "OK");
                    break;

                case "Money Recognition":
                    await Application.Current.MainPage.DisplayAlert("Money Recognition", "Розпізнавання купюр.", "OK");
                    break;

                case "OCR":
                    await Application.Current.MainPage.DisplayAlert("OCR", "Розпізнавання тексту.", "OK");
                    break;

                case "Face Recognition":
                    await Application.Current.MainPage.DisplayAlert("Face Recognition", "Розпізнавання облич.", "OK");
                    break;

                case "Compass":
                    await Application.Current.MainPage.DisplayAlert("Compass", "Озвучення напрямку.", "OK");
                    break;

                default:
                    await Application.Current.MainPage.DisplayAlert("Помилка", "Невідомий режим.", "OK");
                    break;
            }
        }

        
        private async void ExecuteTextToSpeech()
        {
            string textToSpeak = TtsInputText;
            if (string.IsNullOrWhiteSpace(textToSpeak))
            {
                textToSpeak = "Будь ласка, введіть текст для озвучення.";
            }

            var locales = await TextToSpeech.Default.GetLocalesAsync(); // Отримати список доступних мов
            var ukrainianLocale = locales.FirstOrDefault(l => l.Language == "uk"); // Знайти українську мову

            var options = new SpeechOptions
            {
                Locale = ukrainianLocale // Використати українську локаль
            };

            await TextToSpeech.Default.SpeakAsync(textToSpeak, options);
        }
        public void ExecuteAIRecognition()
        {
            // Логіка роботи AI
            Application.Current.MainPage.DisplayAlert("AI Recognize", "Розпізнавання об'єктів активовано!", "OK");
    
            // TODO: Реалізуйте логіку обробки кадру з камери
        }
        
        public async Task ExecuteSpeechToText(CancellationToken cancellationToken)
        {
            try
            {
                // Запит дозволу на використання мікрофона
                var isGranted = await SpeechToText.Default.RequestPermissions(cancellationToken);
                if (!isGranted)
                {
                    await Toast.Make("Доступ до мікрофона не надано").Show(CancellationToken.None);
                    return;
                }

                // Розпізнавання мови
                var recognitionResult = await SpeechToText.Default.ListenAsync(
                    CultureInfo.GetCultureInfo("eu-US"), // Локаль для української мови
                    new Progress<string>(partialText =>
                    {
                        RecognitionText += partialText + " ";
                        OnPropertyChanged(nameof(RecognitionText));
                    }), 
                    cancellationToken);
                
                // Обробка результату
                if (recognitionResult.IsSuccessful)
                {
                    RecognitionText = recognitionResult.Text;
                    OnPropertyChanged(nameof(RecognitionText));
                }
                else
                {
                    await Toast.Make(recognitionResult.Exception?.Message ?? "Cant specified language").Show(CancellationToken.None);
                }
            }
            catch (Exception ex)
            {
                await Toast.Make($"Помилка: {ex.Message}").Show(CancellationToken.None);
            }
        }




// Властивість для розпізнаного тексту
        private string _recognitionText;
        public string RecognitionText
        {
            get => _recognitionText;
            set
            {
                if (_recognitionText != value)
                {
                    _recognitionText = value;
                    OnPropertyChanged();
                }
            }
        }

        private string _ttsInputText;
        public string TtsInputText
        {
            get => _ttsInputText;
            set
            {
                if (_ttsInputText != value)
                {
                    _ttsInputText = value;
                    OnPropertyChanged();
                }
            }
        }





        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
