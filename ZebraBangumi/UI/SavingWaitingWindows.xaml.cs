using MahApps.Metro.Controls;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace ZebraBangumi
{
    /// <summary>
    /// SavingWaitingWindows.xaml 的交互逻辑
    /// </summary>
    public partial class SavingWaitingWindows : MetroWindow
    {
        public SavingWaitingWindows(ProgressListener pl)
        {
            InitializeComponent();
            pl.ValueChanged += (sender, value) =>
            {
                this.Dispatcher.Invoke(() =>
                {
                    SetProgressBarValue(value);
                });
            };
            pl.ExceptionHappened += (sender, e) =>
              {
                  this.Dispatcher.Invoke(() => this.Close());
              };
        }

        private void SetProgressBarValue(Double value)
        {
            double times = Properties.Settings.Default.PictureSaveMagnification;
            double time = (value - pbSaving.Value) * times * times;
            DoubleAnimation doubleAnimation = new DoubleAnimation(value, new Duration(TimeSpan.FromMilliseconds(time)));
            Storyboard sb = new Storyboard();
            sb.Children.Add(doubleAnimation);
            if (value >= 100)
            {
                doubleAnimation.Duration = TimeSpan.FromMilliseconds(100);
                sb.Completed += (sender, e) => { this.Close(); };
            }
            Storyboard.SetTarget(sb, pbSaving);
            Storyboard.SetTargetProperty(sb, new PropertyPath(ProgressBar.ValueProperty));
            sb.Begin();
        }

        private void BtnCertain_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
