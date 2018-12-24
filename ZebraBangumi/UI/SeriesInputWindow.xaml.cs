using MahApps.Metro.Controls;
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
using System.Windows.Shapes;
using MahApps.Metro.Controls.Dialogs;

namespace ZebraBangumi
{
    /// <summary>
    /// SeriesInputWindow.xaml 的交互逻辑
    /// </summary>
    public partial class SeriesInputWindow : MetroWindow
    {
        public SeriesInputWindow(Boolean showDescription)
        {
            InitializeComponent();
            this.ShowDescription = showDescription;
        }

        private bool showDescription = true;
        public bool ShowDescription
        {
            get => showDescription;
            set
            {
                showDescription = value;
                if (!value)
                {
                    TurnToPage2();
                }
            }
        }

        private void TurnToPage1()
        {
            transitioner.SelectedIndex = 0;
            btnLeft.Content = "验证产品";
            btnRight.Content = "试用";
        }

        private void TurnToPage2()
        {
            transitioner.SelectedIndex = 1;
            btnLeft.Content = showDescription ? "返回" : "取消";
            btnRight.Content = "确认";
        }

        private void TurnToPage3()
        {
            transitioner.SelectedIndex = 2;
            btnLeft.Visibility = Visibility.Hidden;
            btnRight.Content = "关闭";
        }

        private void BtnLeft_Click(object sender, RoutedEventArgs e)
        {
            if (transitioner.SelectedIndex == 0) TurnToPage2();
            else if (transitioner.SelectedIndex == 1)
            {
                if (showDescription) TurnToPage1();
                else this.Close();
            }
        }

        private void BtnRight_Click(object sender, RoutedEventArgs e)
        {
            if (transitioner.SelectedIndex == 0) this.Close();
            else if (transitioner.SelectedIndex == 1) 
            {
                Properties.Settings.Default.Series = tbSeriesCode.Text;
                if (ZebraManager.Instance.ReCheckAccess())
                {
                    TurnToPage3();
                    Properties.Settings.Default.Save();
                }
                else
                {
                    this.ShowMessageAsync("产品密钥错误", "该密钥不可用，请确认输入是否正确", MessageDialogStyle.Affirmative);
                }
            }
            else //transitioner.SelectedIndex==3
            {
                this.Close();
            }
        }
    }
}
