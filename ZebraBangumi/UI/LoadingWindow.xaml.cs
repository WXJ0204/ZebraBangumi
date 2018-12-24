using MahApps.Metro.Controls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ZebraBangumi
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class LoadingWindow : MetroWindow
    {
        public LoadingWindow(bool startAtStep2 = false)
        {
            InitializeComponent();

            if(startAtStep2)
            {
                this.WindowStartupLocation = WindowStartupLocation.CenterScreen;
                step1.Visibility = Visibility.Collapsed;
                step2.Visibility = Visibility.Visible;
                tbTitle.Text = "数据加载";
                Thread thread = new Thread(() =>
                {
                try
                {
                    ZebraManager manager = ZebraManager.Instance;
                }
                catch (Exception e)
                {
                    new TipDialog("重大错误", "文件格式可能损坏：" + e.Message).ShowDialog();
                    Application.Current.Dispatcher.Invoke(() => Application.Current.Shutdown());
                    }
                    this.Dispatcher.Invoke(() =>
                    {
                        cycle2.Visibility = Visibility.Hidden;
                        check2.Visibility = Visibility.Visible;
                        tip2.Text = "数据库加载完成";
                        btnCompleted.IsEnabled = true;
                        this.Close();
                    });
                });
                thread.SetApartmentState(ApartmentState.STA);
                thread.Start();
            }
            else
            {
                Task.Run(() =>
                {
                    ZebraManager.Instance.UpdateDataBaseSync();
                    DataUpdateCompleted();
                });
            }
        }

        public void DataUpdateCompleted()
        {
            this.Dispatcher.Invoke(() =>
            {
                cycle1.Visibility = Visibility.Hidden;
                check1.Visibility = Visibility.Visible;
                tip1.Text = "数据库更新完成";
                step2.Visibility = Visibility.Visible;
                tbTitle.Text = "数据加载";
            });
            ZebraManager.Instance.Reload();
            DataLoadCompleted();
        }

        public void DataLoadCompleted()
        {
            this.Dispatcher.Invoke(() =>
            {
                cycle2.Visibility = Visibility.Hidden;
                check2.Visibility = Visibility.Visible;
                tip2.Text = "数据库加载完成";
                btnCompleted.IsEnabled = true;
            });
        }

        private void BtnCompleted_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
