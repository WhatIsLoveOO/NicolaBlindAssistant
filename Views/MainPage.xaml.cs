using System;
using System.Threading;
using Microsoft.Maui.Controls;
using NicolaBlindAssistant.ViewModels;
using CommunityToolkit.Maui;
using Emgu.Util;
using Microsoft.Maui;

namespace NicolaBlindAssistant.Views
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            BindingContext = new ModeViewModel();
        }

        // Обробник меню
        private void OnMenuClicked(object sender, EventArgs e)
        {
            DisplayActionSheet("Меню", "Закрити", null, "FAQ");
        }

        // Відображення інформації про поточний режим
        private void OnInfoClicked(object sender, EventArgs e)
        {
            var viewModel = BindingContext as ModeViewModel;
            if (viewModel != null)
            {
                string info = viewModel.CurrentMode switch
                {
                    "AI Recognize" => "Цей режим дозволяє розпізнавати об'єкти в реальному часі за допомогою штучного інтелекту.",
                    "Text to Speech" => "Цей режим перетворює текст у мову, щоб озвучувати його користувачеві.",
                    "Speech to Text" => "Цей режим розпізнає голос і перетворює його на текст.",
                    "Magnifier" => "Цей режим працює як збільшувальне скло для кращого перегляду дрібних деталей.",
                    "Money Recognition" => "Цей режим розпізнає номінали купюр перед камерою.",
                    "OCR" => "Цей режим використовує технологію OCR для розпізнавання тексту в зображеннях.",
                    "Face Recognition" => "Цей режим розпізнає обличчя в кадрі.",
                    "Compass" => "Цей режим озвучує напрямок, у якому дивиться користувач.",
                    _ => "Інформація про цей режим відсутня."
                };

                DisplayAlert("Інформація про режим", info, "OK");
            }
        }


        // Виклик виконавчої команди через кнопку (якщо потрібно додати спеціальний обробник)
        private void OnExecuteModeClicked(object sender, EventArgs e)
        {
            var viewModel = BindingContext as ModeViewModel;
            if (viewModel != null)
            {
                viewModel.ExecuteCurrentModeCommand.Execute(null);
            }
        }

        private void onTextToSpeech(object sender, EventArgs e)
        {
            Camera.StopCameraPreview();
        }

        private void onAIRecognize(object sender, EventArgs e)
        {
            Camera.StartCameraPreview(new CancellationToken());
        }
        
        private async void OnSpeechToTextClicked(object sender, EventArgs e)
        {
            var viewModel = BindingContext as ModeViewModel;
            if (viewModel != null)
            {
                await viewModel.ExecuteSpeechToText(new CancellationToken());
            }
        }
        private void OnMagnifierClicked(object sender, EventArgs e)
        {
            // Запускаємо попередній перегляд з камери
            Camera.StartCameraPreview(new CancellationToken());
        }

        private void OnZoomSliderValueChanged(object sender, ValueChangedEventArgs e)
        {
            // Змінюємо масштаб
            Camera.ZoomFactor = (float)e.NewValue;
        }
        
        private void OnPinchUpdated(object sender, PinchGestureUpdatedEventArgs e)
{
    if (Camera.SelectedCamera != null && e.Status == GestureStatus.Running)
    {
        // Отримання поточного зуму
        float currentZoom = Camera.ZoomFactor;

        // Обчислення нового зуму залежно від жесту
        float newZoom = currentZoom * (float)e.Scale;

        // Обмеження зуму між мінімальним і максимальним значеннями
        newZoom = Math.Clamp(newZoom, Camera.SelectedCamera.MinimumZoomFactor, Camera.SelectedCamera.MaximumZoomFactor);

        // Застосування нового значення зуму
        Camera.ZoomFactor = newZoom;
    }
}

    }
}