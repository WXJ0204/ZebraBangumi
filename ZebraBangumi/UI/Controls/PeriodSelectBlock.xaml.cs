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
    /// PeriodSelectBlock.xaml 的交互逻辑
    /// </summary>
    public partial class PeriodSelectBlock : UserControl
    {
        public String StartYear
        {
            get
            {
                return ((ComboBoxItem)cbStartYear.SelectedItem).Content.ToString();
            }
        }
        public String StartSeason
        {
            get
            {
                return ((ComboBoxItem)cbStartSeason.SelectedItem).Content.ToString();
            }
        }
        public String EndYear
        {
            get
            {
                return ((ComboBoxItem)cbEndYear.SelectedItem).Content.ToString();
            }
        }
        public String EndSeason
        {
            get
            {
                return ((ComboBoxItem)cbEndSeason.SelectedItem).Content.ToString();
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

        private String[] yearsName = new String[] { "2018", "2017", "2016", "2015", "2014", "2013", "2012", "2011", "2010" };
        private String[] seasonsName = new String[] { "冬季", "春季", "夏季", "秋季" };
        private ComboBoxItem[] cbiStartYears, cbiStartSeasons, cbiEndYears, cbiEndSeasons;
        public event RoutedEventHandler PeriodChanged;
        public PeriodSelectBlock()
        {
            InitializeComponent();
            cbiStartYears = new ComboBoxItem[cbStartYear.Items.Count];
            cbiStartSeasons = new ComboBoxItem[cbStartSeason.Items.Count];
            cbiEndYears = new ComboBoxItem[cbEndYear.Items.Count];
            cbiEndSeasons = new ComboBoxItem[cbEndSeason.Items.Count];
            int i = 0;
            foreach (ComboBoxItem cbi in cbStartYear.Items) cbiStartYears[i++] = cbi;
            i = 0;
            foreach (ComboBoxItem cbi in cbStartSeason.Items) cbiStartSeasons[i++] = cbi;
            i = 0;
            foreach (ComboBoxItem cbi in cbEndYear.Items) cbiEndYears[i++] = cbi;
            i = 0;
            foreach (ComboBoxItem cbi in cbEndSeason.Items) cbiEndSeasons[i++] = cbi;
            RefreshComboBoxItems();
        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(IsLoaded) RefreshComboBoxItems();
            PeriodChanged?.Invoke(this, e);
        }
        private void RefreshComboBoxItems()
        {
            String sy = StartYear, ss = StartSeason, ey = EndYear, es = EndSeason;
            Visibility syf = Visibility.Collapsed, ssf = Visibility.Collapsed, eyf = Visibility.Visible, esf = Visibility.Visible;
            
            int i = 0;
            foreach(String yn in yearsName)
            {
                if (ey == yn)
                {
                    syf = Visibility.Visible;
                }
                cbiStartYears[i].Visibility = syf;
                cbiEndYears[i].Visibility = eyf;
                i++;
                if (sy == yn)
                {
                    eyf = Visibility.Collapsed;
                }
            }
            if(sy==ey)
            {
                i = 1;
                foreach (String sn in seasonsName)
                {
                    if (es == sn)
                    {
                        ssf = Visibility.Visible;
                    }
                    cbiStartSeasons[i].Visibility = ssf;
                    cbiEndSeasons[i].Visibility = esf;
                    i++;
                    if (ss == sn)
                    {
                        esf = Visibility.Collapsed;
                    }
                }
            }
            else
            {
                for(i=1;i<5;i++)
                {
                    cbiStartSeasons[i].Visibility = Visibility.Visible;
                    cbiEndSeasons[i].Visibility = Visibility.Visible;
                }
            }
        }
    }
}
