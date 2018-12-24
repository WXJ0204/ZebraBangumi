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

namespace ZebraBangumi
{
    /// <summary>
    /// TipDialog.xaml 的交互逻辑
    /// </summary>
    public partial class TipDialog : MetroWindow
    {
        public String MessageTitle { get; set; }
        public String Message { get; set; }
        public TipDialog(String title, String message)
        {
            this.MessageTitle = title;
            this.Message = message;
            this.DataContext = this;
            InitializeComponent();
        }

        private void BtnCertain_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
