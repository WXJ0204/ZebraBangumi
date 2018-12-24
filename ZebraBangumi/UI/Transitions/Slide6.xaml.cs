using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ZebraBangumi
{
    /// <summary>
    /// Slide6.xaml 的交互逻辑
    /// </summary>
    public partial class Slide6 : UserControl
    {
        private ZebraManager manager = ZebraManager.Instance;
        public Slide6()
        {
            InitializeComponent();
            DataContext = this;
            if (!manager.HasAccess) btnDbUpdate.Visibility = Visibility.Collapsed;
            CheckUpdate();
            CheckRegister();
        }

        private void CheckUpdate()
        {
            if(manager.CheckDbUpdate())
            {
                txbDatabaseHasUpdate.Text = "数据库有更新";
                if(manager.HasAccess) btnDbUpdate.Visibility = Visibility.Visible;
            }
            else
            {
                txbDatabaseHasUpdate.Text = "数据库已是最新";
                btnDbUpdate.Visibility = Visibility.Collapsed;
            }
        }

        public void CheckRegister()
        {
            if (manager.HasAccess)
            {
                txbAccess.Text = "已认证产品密钥";
                btnRegister.Visibility = Visibility.Collapsed;
                seriesCode.Visibility = Visibility.Visible;
                CheckUpdate();
            }
            else
            {
                txbAccess.Text = "未激活";
                btnRegister.Visibility = Visibility.Visible;
                seriesCode.Visibility = Visibility.Collapsed;
            }
        }

        private void BtnRegister_Click(object sender, RoutedEventArgs e)
        {
            new SeriesInputWindow(false) { Owner = manager.MainWindow, WindowStartupLocation = WindowStartupLocation.CenterOwner }.ShowDialog();
            manager.ReCheckAccess();
            CheckRegister();
        }

        private void BtnDbUpdate_Click(object sender, RoutedEventArgs e)
        {
            new LoadingWindow() { Owner = manager.MainWindow, WindowStartupLocation = WindowStartupLocation.CenterOwner }.ShowDialog();
            CheckUpdate();
        }
    }
}
