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
    /// Slide3.xaml 的交互逻辑
    /// </summary>
    public partial class Slide3 : UserControl
    {
        private struct TimePeriod
        {
            public String year, season;
        }
        public Slide3()
        {
            InitializeComponent();
            database.ReLoaded += Database_ReLoaded;
            this.DataContext = this;
            detailSelect.DisableTop5 = true;
            start.year = periodSelect.StartYear;
            end.year = periodSelect.EndYear;
            start.season = ChineseValueTranslater.GetTranslateName(periodSelect.StartSeason);
            end.season = ChineseValueTranslater.GetTranslateName(periodSelect.EndSeason);
            type = ChineseValueTranslater.GetTranslateName(detailSelect.MainType);
            typeExtra = ChineseValueTranslater.GetTranslateName(detailSelect.SecondType);
            ReCreateTopFive();
            ((Axis)chart.AxisX[0]).Labels = GetAxis();
            RefreshTitle();
        }

        private void Database_ReLoaded()
        {
            this.Dispatcher.Invoke(() => ReCreateTopFive());
        }

        private DBOpration database = ZebraManager.Instance.DBOprator;
        public SeriesCollection SeriesCollection { get; set; } = new SeriesCollection();

        private TimePeriod start = new TimePeriod(), end = new TimePeriod();
        private String type, typeExtra;

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
            chartTitle.Text = String.Format("{0}年{1}~{2}年{3}{4}变化曲线", periodSelect.StartYear, periodSelect.StartSeason, periodSelect.EndYear, periodSelect.EndSeason, detailSelect.MainType);
        }
        private void DetailSelect_DoSearch(MetroExtras.SearchBox sender, string searchText)
        {
            List<int> res = GetLine(searchText);
            if (IsUseless(res))
            {
                detailSelect.AddErrorItem(searchText);
                return;
            }

            CheckAndSaveChart();
            LineSeries ps = new LineSeries
            {
                Title = searchText,
                Values = new ChartValues<int>(res)
            };
            SeriesCollection.Add(ps);
            Binding b = new Binding
            {
                Path = new PropertyPath(LineSeries.StrokeProperty),
                Source = ps
            };
            detailSelect.AddItem(searchText, b);
        }

        private bool IsUseless(List<int> form)
        {
            return form.Find((i) => i > 0) == 0;
        }

        private void DetailSelect_TypeChanged(object sender, RoutedEventArgs e)
        {
            CheckAndSaveChart();
            type = ChineseValueTranslater.GetTranslateName(detailSelect.MainType);
            typeExtra = ChineseValueTranslater.GetTranslateName(detailSelect.SecondType);
            ReCreateTopFive();
            RefreshTitle();
        }


        private void PeriodSelect_PeriodChanged(object sender, RoutedEventArgs e)
        {
            CheckAndSaveChart();
            start.year = periodSelect.StartYear;
            end.year = periodSelect.EndYear;
            start.season = ChineseValueTranslater.GetTranslateName(periodSelect.StartSeason);
            end.season = ChineseValueTranslater.GetTranslateName(periodSelect.EndSeason);
            ReFreshLine();
            RefreshTitle();
        }

        private void ReFreshLine()
        {
            List<ISeriesView> delSeries = new List<ISeriesView>();
            foreach(LineSeries series in SeriesCollection)
            {
                List<int> res = GetLine(series.Title);
                if(IsUseless(res))
                {
                    delSeries.Add(series);
                    continue;
                }
                series.Values = new ChartValues<int>(res);
            }
            foreach(var s in delSeries)
            {
                detailSelect.RemoveItem(s.Title);
                SeriesCollection.Remove(s);
            }
            ((Axis)chart.AxisX[0]).Labels = GetAxis();
        }

        private void ReCreateTopFive()
        {
            Dictionary<String, int> contents = GetTopFive();
            SeriesCollection.Clear();
            detailSelect.ClearAllItem();
            foreach (var tvp in contents)
            {
                List<int> res = GetLine(tvp.Key);
                LineSeries ps = new LineSeries
                {
                    Title = tvp.Key,
                    Values = new ChartValues<int>(res)
                };
                SeriesCollection.Add(ps);
                Binding b = new Binding
                {
                    Path = new PropertyPath(LineSeries.StrokeProperty),
                    Source = ps
                };
                detailSelect.AddItem(tvp.Key, b);
            }
        }

        private void DetailSelect_ItemCanceled(object sender, RoutedEventArgs e)
        {
            CheckAndSaveChart();

            String str = ((ToggleButton)e.Source).Content as String;
            var isv = FromSeriesCollectionFind(str);
            if (isv == null) return;
            SeriesCollection.Remove(isv);
        }

        private ISeriesView FromSeriesCollectionFind(String name)
        {
            foreach (var isv in SeriesCollection)
            {
                if (isv.Title.Equals(name)) return isv;
            }
            return null;
        }

        private Dictionary<String, int> GetTopFive()
        {
            return database.GetSecondPageExtra(end.year, end.season, type, typeExtra);
        }
        private List<int> GetLine(String tag)
        {
            return database.GetThirdPageCount(start.year, start.season, end.year, end.season, type, tag, typeExtra);
        }
        private List<String> GetAxis()
        {
            List<String> source = database.GetThirdPage(start.year, start.season, end.year, end.season);
            return source;
        }
    }
}
