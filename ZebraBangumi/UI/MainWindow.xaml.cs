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

namespace ZebraBangumi
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        private TabButton[] btnTabs;
        ZebraManager manager;
        public MainWindow()
        {
            new LoadingWindow(true).ShowDialog();
            InitializeComponent();
            manager = ZebraManager.Instance;
            manager.MainWindow = this;
            if(!manager.HasAccess) new SeriesInputWindow(true).ShowDialog();
            slide6.CheckRegister();
            btnTabs = new TabButton[stpTabs.Children.Count];
            int i = 0;
            foreach(var e in stpTabs.Children)
            {
                btnTabs[i++] = e as TabButton;
            }
            mainShow.SetValue(MetroExtras.MetroExtraColor.MainBrushProperty, btnTabs[0].Background);
            btnTabs[0].Select(true);
        }

        private void Rectangle_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void BtnClose_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void BtnMinimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void BtnTab_Click(object sender, RoutedEventArgs e)
        {
            TabButton clickedButton = sender as TabButton;
            clickedButton.Select(true);
            mainShow.SetValue(MetroExtras.MetroExtraColor.MainBrushProperty, clickedButton.Background);
            int i = 0;
            foreach(var ts in btnTabs)
            {
                if (ts != clickedButton)
                {
                    if (ts.Select(false))
                    {
                        switch(i)
                        {
                            case 0:
                                slide1.CheckAndSaveChart();
                                break;
                            case 1:
                                slide2.CheckAndSaveChart();
                                break;
                            case 2:
                                slide3.CheckAndSaveChart();
                                break;
                            case 3:
                                slide4.CheckAndSaveChart();
                                break;
                        }
                    }
                }
                else
                {
                    transitioner.SelectedIndex = i;
                    if(i==4)
                    {
                        slide5.TurnToThisPage();
                    }
                }
                i++;
            }
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            Properties.Settings.Default.Save();
        }
    }
}
