using LiveCharts;
using LiveCharts.Defaults;
using LiveCharts.Definitions.Series;
using LiveCharts.Wpf;
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

namespace ZebraBangumi
{
    /// <summary>
    /// Slide2.xaml 的交互逻辑
    /// </summary>
    public partial class Slide2 : UserControl
    {
        private DBOpration database = ZebraManager.Instance.DBOprator;
        private String year, season, type, typeExtra;
        private bool rangeTypeIsTop5 = true;
        public Slide2()
        {
            InitializeComponent();
            database.ReLoaded += Database_ReLoaded;
            this.DataContext = this;
            year = timeSelect.Year;
            season = ChineseValueTranslater.GetTranslateName(timeSelect.Season);
            type = ChineseValueTranslater.GetTranslateName(detailSelect.MainType);
            typeExtra = ChineseValueTranslater.GetTranslateName(detailSelect.SecondType);
            ReCreateTopFive();
            RefreshTitle();
        }

        private void Database_ReLoaded()
        {
            this.Dispatcher.Invoke(() => ReCreateTopFive());
        }

        public SeriesCollection SeriesCollection { get; set; } = new SeriesCollection();

        public void CheckAndSaveChart()
        {
            if (btnSaveForm.IsChecked == true)
            {
                btnSaveForm.IsChecked = false;
                ZebraManager.Instance.ImageCache.AddChartToCache(pChart);
            }
        }

        private void RefreshTitle()
        {
            chartTitle.Text = String.Format("{0}年{1}{2}次数统计", timeSelect.Year, timeSelect.Season, detailSelect.MainType);
        }
        private void TimeSelect_TimeChanged(object sender, RoutedEventArgs e)
        {
            CheckAndSaveChart();
            year = timeSelect.Year;
            season = ChineseValueTranslater.GetTranslateName(timeSelect.Season);

            detailSelect.SetRangeType(false);
            ReFreshCurrentTag();
            RefreshTitle();
        }

        private void DetailSelect_DoSearch(MetroExtras.SearchBox sender, string searchText)
        {
            if(SeriesCollection.Count>=15)
            {
                detailSelect.AddErrorItem("装不下啦~");
                return;
            }
            int tagC = GetTagCount(searchText);
            if(tagC==0)
            {
                detailSelect.AddErrorItem(searchText);
                return;
            }
            //待定
            CheckAndSaveChart();

            RowSeries ps = new RowSeries
            {
                Title = searchText,
                Values = new ChartValues<ObservableValue> { new ObservableValue((Double)tagC) }
            };
            SeriesCollection.Add(ps);
            Binding b = new Binding
            {
                Path = new PropertyPath(PieSeries.FillProperty),
                Source = ps
            };
            detailSelect.AddItem(searchText, b);
        }

        private void DetailSelect_TypeChanged(object sender, RoutedEventArgs e)
        {
            CheckAndSaveChart();

            type = ChineseValueTranslater.GetTranslateName(detailSelect.MainType);
            typeExtra = ChineseValueTranslater.GetTranslateName(detailSelect.SecondType);
            detailSelect.SetRangeType(true);
            ReCreateTopFive();
            RefreshTitle();
        }

        private void DetailSelect_RangeTypeChanged(object sender, RoutedEventArgs e)
        {
            rangeTypeIsTop5 = detailSelect.RangeType.Equals("Top5");
            if (!rangeTypeIsTop5) return;
            //待定
            CheckAndSaveChart();
            ReCreateTopFive();
        }

        private void ReCreateTopFive()
        {
            Dictionary<String, int> contents = GetTopFive();
            SeriesCollection.Clear();
            detailSelect.ClearAllItem();
            foreach (var tvp in contents)
            {
                RowSeries ps = new RowSeries
                {
                    Title = tvp.Key,
                    Values = new ChartValues<ObservableValue> { new ObservableValue((Double)tvp.Value) }
                };
                SeriesCollection.Add(ps);
                Binding b = new Binding
                {
                    Path = new PropertyPath(PieSeries.FillProperty),
                    Source = ps
                };
                detailSelect.AddItem(tvp.Key, b);
            }
        }

        private void ReFreshCurrentTag()
        {
            List<RowSeries> delSeries = new List<RowSeries>();
            foreach (RowSeries tvp in SeriesCollection)
            {
                int tagC = GetTagCount(tvp.Title);
                if (tagC == 0) 
                {
                    detailSelect.RemoveItem(tvp.Title);
                    delSeries.Add(tvp);
                }
                else
                {
                    ((ObservableValue)tvp.Values[0]).Value = tagC;
                }
            }
            foreach(RowSeries rs in delSeries)
            {
                SeriesCollection.Remove(rs);
            }
        }

        private void DetailSelect_ItemCanceled(object sender, RoutedEventArgs e)
        {
            CheckAndSaveChart();

            if (rangeTypeIsTop5) detailSelect.SetRangeType(false);
            String str = ((ToggleButton)e.Source).Content as String;
            var isv = FromSeriesCollectionFind(str);
            if (isv == null) return;
            SeriesCollection.Remove(isv);
        }

        private ISeriesView FromSeriesCollectionFind(String name)
        {
            foreach(var isv in SeriesCollection)
            {
                if(isv.Title.Equals(name)) return isv;
            }
            return null;
        }

        private int GetTagCount(String tag)
        {
            return database.GetSecondPage(year, season, type, tag, typeExtra);
        }
        private Dictionary<String, int> GetTopFive()
        {
            return database.GetSecondPageExtra(year, season, type, typeExtra);
        }
    }
}
