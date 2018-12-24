using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using MetroExtras;

namespace ZebraBangumi
{
    /// <summary>
    /// TimeSelectBlock.xaml 的交互逻辑
    /// </summary>
    public partial class TimeSelectBlock : UserControl
    {
        public event RoutedEventHandler TimeChanged;
        private List<ToggleButton> tbYears = new List<ToggleButton>(), tbSeasons = new List<ToggleButton>();
        public TimeSelectBlock()
        {
            InitializeComponent();
            foreach(var o in pnlYears.Children)
            {
                tbYears.Add((ToggleButton)o);
            }
            foreach(var o in pnlSeasons.Children)
            {
                tbSeasons.Add((ToggleButton)o);
            }
        }

        public String Year
        {
            get
            {
                foreach (var tb in tbYears)
                {
                    if (tb.IsChecked == true) return tb.Content.ToString();
                }
                return null;
            }
        }

        public String Season
        {
            get
            {
                foreach (var tb in tbSeasons)
                {
                    if (tb.IsChecked == true) return tb.Content.ToString();
                }
                return "全年";
            }
        }

        public bool AllowInput
        {
            get
            {
                return lockBlock.Visibility == Visibility.Hidden;
            }
            set
            {
                lockBlock.Visibility = value ? Visibility.Hidden : Visibility.Visible;
            }
        }

        private void TbYears_Checked(object sender, RoutedEventArgs e)
        {
            ToggleButton clicked = sender as ToggleButton;
            foreach(var tb in tbYears)
            {
                if(tb.IsEnabled==false)
                {
                    tb.IsEnabled = true;
                    tb.IsChecked = false;
                    break;
                }
            }
            clicked.IsEnabled = false;
            TimeChanged?.Invoke(this, e);
        }

        private void TbSeasons_Unchecked(object sender, RoutedEventArgs e)
        {
            TimeChanged?.Invoke(this, e);
        }

        private void TbSeasons_Checked(object sender, RoutedEventArgs e)
        {
            ToggleButton clicked = sender as ToggleButton;
            foreach (var tb in tbSeasons) 
            {
                if (tb.IsChecked == true && tb != clicked)
                {
                    tb.IsEnabled = true;
                    tb.IsChecked = false;
                    return;
                }
            }
            TimeChanged?.Invoke(this, e);
        }
    }
}
