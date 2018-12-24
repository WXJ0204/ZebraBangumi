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
    /// Slide1.xaml 的交互逻辑
    /// </summary>
    public partial class Slide1 : UserControl
    {
        private DBOpration database = ZebraManager.Instance.DBOprator;
        public Slide1()
        {
            InitializeComponent();
            database.ReLoaded += Database_ReLoaded;
            year = tsBlock.Year;
            season = ChineseValueTranslater.GetTranslateName(tsBlock.Season);
            type = ChineseValueTranslater.GetTranslateName(nsBlock.SelectedType);
            this.DataContext = this;
            ReCreateChartElement();
        }

        private void Database_ReLoaded()
        {
            this.Dispatcher.Invoke(()=>ReCreateChartElement());
        }

        private String year, season, type;

        public SeriesCollection SeriesCollection { get; set; } = new SeriesCollection();

        private void RefreshTitle()
        {
            chartTitle.Text = String.Format("{0}年{1}{2}数量占比", tsBlock.Year, tsBlock.Season, nsBlock.SelectedType);
        }
        public void CheckAndSaveChart()
        {
            if (btnSaveForm.IsChecked == true) 
            {
                btnSaveForm.IsChecked = false;
                ZebraManager.Instance.ImageCache.AddChartToCache(pChart);
            }
        }

        private void TsBlock_TimeChanged(object sender, RoutedEventArgs e)
        {
            //检查保存
            CheckAndSaveChart();

            year = tsBlock.Year;
            season = ChineseValueTranslater.GetTranslateName(tsBlock.Season);
            ChangeChartElement();
        }

        private void NsBlock_TypeChanged(object sender, SelectionChangedEventArgs e)
        {
            //检查保存
            CheckAndSaveChart();

            type = ChineseValueTranslater.GetTranslateName(nsBlock.SelectedType);
            ReCreateChartElement();
        }

        private List<ISeriesView> unSelectedItems = new List<ISeriesView>();

        private void ReCreateChartElement()
        {
            Dictionary<String, int> contents = GetValuePairs();
            SeriesCollection.Clear();
            unSelectedItems.Clear();
            nsBlock.ClearAllItem();
            foreach(var tvp in contents)
            {
                PieSeries ps = new PieSeries
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
                nsBlock.AddItem(tvp.Key, b);
            }
            RefreshTitle();
        }

        private void NsBlock_ItemChecked(object sender, RoutedEventArgs e)
        {
            var v = unSelectedItems.Find((isv) => isv.Title.Equals(((ToggleButton)e.Source).Content));
            if (v == null) return;
            unSelectedItems.Remove(v);
            SeriesCollection.Add(v);
        }

        private void NsBlock_ItemUnchecked(object sender, RoutedEventArgs e)
        {
            foreach(var series in SeriesCollection)
            {
                if(series.Title.Equals(((ToggleButton)e.Source).Content))
                {
                    unSelectedItems.Add(series);
                    SeriesCollection.Remove(series);
                    break;
                }
            }
        }

        private void ChangeChartElement()
        {
            Dictionary<String, int> contents = GetValuePairs();
            List<ISeriesView> delSeries = new List<ISeriesView>();
            List<String> reContents = new List<string>(contents.Keys);
            //处理正在显示的
            foreach(var series in SeriesCollection)
            {
                if (!contents.TryGetValue(series.Title, out int newValue))
                {
                    delSeries.Add(series);
                    continue;
                }
                (series.Values as ChartValues<ObservableValue>)[0].Value = newValue;
                reContents.Remove(series.Title);
            }
            //处理不显示的
            foreach (var series in unSelectedItems)
            {
                if (!contents.TryGetValue(series.Title, out int newValue))
                {
                    delSeries.Add(series);
                    continue;
                }
                (series.Values as ChartValues<ObservableValue>)[0].Value = newValue;
                reContents.Remove(series.Title);
            }
            //删除多余的
            foreach (PieSeries series in delSeries)
            {
                nsBlock.RemoveItem(series.Title);
                SeriesCollection.Remove(series);
            }
            //添加新显示的
            if (reContents.Count != 0)
            {
                foreach(var tvp in reContents)
                {
                    PieSeries ps = new PieSeries
                    {
                        Title = tvp,
                        Values = new ChartValues<ObservableValue> { new ObservableValue((Double)contents[tvp]) }
                    };
                    SeriesCollection.Add(ps);
                    Binding b = new Binding
                    {
                        Path = new PropertyPath(PieSeries.FillProperty),
                        Source = ps
                    };
                    nsBlock.AddItem(tvp, b);
                }
            }
            RefreshTitle();
        }

        private Dictionary<String, int> GetValuePairs()
        {
           return database.GetFirstPage(year, season, type);
        }
    }
}
