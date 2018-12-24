using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
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
    /// Slide4.xaml 的交互逻辑
    /// </summary>
    public partial class Slide4 : UserControl
    {
        private String year, season;
        private ImageCache images = ZebraManager.Instance.ImageCache;
        public Slide4()
        {
            InitializeComponent();
            //String[] years = new String[] { "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018" };
            //String[] seasons = new String[] { "winter", "spring", "summer", "autumn", "全部" };
            //Directory.CreateDirectory("ciyun");
            //foreach(String year in years)
            //{
            //    foreach(String season in seasons)
            //    {
            //        Dictionary<String, double> sbdic = ZebraManager.Instance.DBOprator.GetFourthPage(year, season);
            //        using (FileStream fs = File.Create(@"ciyun\" + year + season))
            //        {
            //            using (StreamWriter sw = new StreamWriter(fs))
            //            {
            //                foreach(var kv in sbdic)
            //                {
            //                    sw.WriteLine("{0}\t{1}", kv.Key, kv.Value);
            //                }
            //            }
            //        }
            //    }
            //}

            year = timeSelect.Year;
            season = ChineseValueTranslater.GetTranslateName(timeSelect.Season);
            mainShow.Source = images.GetWordCloud(year, season);
        }

        private void ReShow()
        {
            void DoAnimate(PropertyPath propertyPath, Double to, EventHandler completed = null)
            {
                DoubleAnimationUsingKeyFrames easing = new DoubleAnimationUsingKeyFrames { Duration = TimeSpan.FromMilliseconds(300) };
                SineEase efb = new SineEase { EasingMode = EasingMode.EaseOut };
                EasingDoubleKeyFrame edkf = new EasingDoubleKeyFrame(to) { EasingFunction = efb };
                easing.KeyFrames.Add(edkf);
                Storyboard sb = new Storyboard();
                Storyboard.SetTarget(easing, mainShow);
                Storyboard.SetTargetProperty(easing, propertyPath);
                if (completed != null) sb.Completed += completed;
                sb.Children.Add(easing);
                sb.Begin();
            }
            DoAnimate(new PropertyPath(Image.OpacityProperty), 0,(sender,o)=>
            {
                mainShow.Source = images.GetWordCloud(year, season);
                DoAnimate(new PropertyPath(Image.OpacityProperty), 1);
            });
        }


        public void CheckAndSaveChart()
        {
            if (btnSaveForm.IsChecked == true)
            {
                btnSaveForm.IsChecked = false;
                ZebraManager.Instance.ImageCache.AddChartToCache(mainShow);
            }
        }

        private void TimeSelectBlock_TimeChanged(object sender, RoutedEventArgs e)
        {
            CheckAndSaveChart();
            year = timeSelect.Year;
            season = ChineseValueTranslater.GetTranslateName(timeSelect.Season);
            ReShow();
        }
    }
}
