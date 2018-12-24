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
using System.Windows.Media.Animation;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using MetroExtras;

namespace ZebraBangumi
{
    /// <summary>
    /// AddableSelectBlock.xaml 的交互逻辑
    /// </summary>
    public partial class AddableSelectBlock : UserControl
    {
        public AddableSelectBlock()
        {
            InitializeComponent();
        }

        public event SearchBox.DoSearchDelegate DoSearch;
        public event RoutedEventHandler ItemCanceled;
        public event RoutedEventHandler TypeChanged;
        public event RoutedEventHandler RangeTypeChanged;

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

        public String MainType
        {
            get
            {
                ComboBoxItem cbi = cbMainType.SelectedValue as ComboBoxItem;
                return cbi.Content as String;
            }
        }

        public String SecondType
        {
            get
            {
                ComboBoxItem cbi = cbSecondType.SelectedValue as ComboBoxItem;
                return cbi.Content as String;
            }
        }

        public String RangeType
        {
            get
            {
                ComboBoxItem cbi = cbRangeType.SelectedValue as ComboBoxItem;
                return cbi.Content as String;
            }
        }

        public bool DisableTop5
        {
            get
            {
                return cbRangeType.Visibility == Visibility.Collapsed;
            }
            set
            {
                cbRangeType.Visibility = value ? Visibility.Collapsed : Visibility.Visible;
            }
        }

        public void SetRangeType(bool isTop5)
        {
            if (isTop5) cbRangeType.SelectedIndex = 1;
            else cbRangeType.SelectedIndex = 0;
        }

        public void AddItem(String text, BindingBase brushBinding = null)
        {
            ToggleButton tb = new ToggleButton { Content = text };
            if (brushBinding != null) tb.SetBinding(MetroExtraColor.MainBrushProperty, brushBinding);
            tb.IsChecked = true;
            tb.Checked += Item_Checked;
            tb.Unchecked += Item_Unchecked;
            wpItems.Children.Add(tb);
            Appear(tb);
        }

        public void ClearAllItem()
        {
            wpItems.Children.Clear();
        }

        public void RemoveItem(String text)
        {
            foreach (ToggleButton tb in wpItems.Children)
            {
                if (tb.Content.Equals(text))
                {
                    Disappear(tb, (sender, o) => wpItems.Children.Remove(tb));
                    break;
                }
            }
        }

        public void AddErrorItem(String text, Brush brush = null)
        {
            ToggleButton tb = new ToggleButton { Content = text };
            if (brush != null) tb.SetValue(MetroExtraColor.MainBrushProperty, brush);
            tb.IsEnabled = false;
            tb.IsChecked = false;
            wpItems.Children.Add(tb);
            Appear(tb, (sender0, e0) => Flash(tb, (sender1, e1) => Disappear(tb, (sender2, e2) => wpItems.Children.Remove(tb))));
        }

        private Dictionary<ToggleButton, Storyboard> itemWarning = new Dictionary<ToggleButton, Storyboard>();
        private void Item_Unchecked(object sender, RoutedEventArgs e)
        {
            ToggleButton tb = sender as ToggleButton;
            itemWarning.Add(tb, Flash(tb, (sd, o) =>
            {
                itemWarning.Remove(tb);
                tb.IsEnabled = false;
                ItemCanceled?.Invoke(this, e);
                Disappear(tb, (sender2, e2) => wpItems.Children.Remove(tb));
            }));
        }

        private void Item_Checked(object sender, RoutedEventArgs e)
        {
            ToggleButton tb = sender as ToggleButton;
            if(itemWarning.TryGetValue(tb, out Storyboard sb))
            {
                sb.Stop();
                tb.Opacity = 1;
                itemWarning.Remove(tb);
            }
        }

        public ToggleButton GetItem(String text)
        {
            foreach (var o in wpItems.Children)
            {
                ToggleButton tb = o as ToggleButton;
                if (text.Equals(tb.Content)) return tb;
            }
            return null;
        }

        private Storyboard Flash(ToggleButton target, EventHandler completed = null)
        {
            DoubleAnimationUsingKeyFrames easing = new DoubleAnimationUsingKeyFrames();
            DoubleKeyFrameCollection dkfc = easing.KeyFrames;
            dkfc.Add(new EasingDoubleKeyFrame(0.2, TimeSpan.FromMilliseconds(300), new SineEase { EasingMode = EasingMode.EaseInOut }));
            dkfc.Add(new EasingDoubleKeyFrame(1.0, TimeSpan.FromMilliseconds(600), new SineEase { EasingMode = EasingMode.EaseInOut }));
            dkfc.Add(new EasingDoubleKeyFrame(0.2, TimeSpan.FromMilliseconds(900), new SineEase { EasingMode = EasingMode.EaseInOut }));
            dkfc.Add(new EasingDoubleKeyFrame(1.0, TimeSpan.FromMilliseconds(1200), new SineEase { EasingMode = EasingMode.EaseInOut }));
            Storyboard sb = new Storyboard();
            if (completed != null) sb.Completed += completed;
            Storyboard.SetTarget(easing, target);
            Storyboard.SetTargetProperty(easing, new PropertyPath(ToggleButton.OpacityProperty));
            sb.Children.Add(easing);
            sb.Begin();
            return sb;
        }

        private Storyboard Disappear(UIElement target, EventHandler completed = null)
        {
            DoubleAnimationUsingKeyFrames easing = new DoubleAnimationUsingKeyFrames();
            DoubleKeyFrameCollection dkfc = easing.KeyFrames;
            dkfc.Add(new EasingDoubleKeyFrame(0, TimeSpan.FromMilliseconds(300), new SineEase { EasingMode = EasingMode.EaseOut }));
            Storyboard sb = new Storyboard();
            if (completed != null) sb.Completed += completed;
            Storyboard.SetTarget(easing, target);
            Storyboard.SetTargetProperty(easing, new PropertyPath(UIElement.OpacityProperty));
            sb.Children.Add(easing);
            sb.Begin();
            return sb;
        }

        private Storyboard Appear(UIElement target, EventHandler completed = null)
        {
            DoubleAnimationUsingKeyFrames easing = new DoubleAnimationUsingKeyFrames();
            DoubleKeyFrameCollection dkfc = easing.KeyFrames;
            dkfc.Add(new EasingDoubleKeyFrame(1, TimeSpan.FromMilliseconds(300), new SineEase { EasingMode = EasingMode.EaseOut }));
            Storyboard sb = new Storyboard();
            if (completed != null) sb.Completed += completed;
            Storyboard.SetTarget(easing, target);
            Storyboard.SetTargetProperty(easing, new PropertyPath(UIElement.OpacityProperty));
            sb.Children.Add(easing);
            target.Opacity = 0;
            sb.Begin();
            return sb;
        }

        private void SearchBox_DoSearch(SearchBox sender, string searchText)
        {
            DoSearch?.Invoke(sender, searchText);
            sender.Text = "";
            cbRangeType.SelectedIndex = 0;
        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (!IsLoaded) return;
            if(MainType.Equals("CAST"))
            {
                cbSecondType.Visibility = Visibility.Visible;
                Appear(cbSecondType);
            }
            else if (cbSecondType.Visibility == Visibility.Visible)
            {
                cbSecondType.Visibility = Visibility.Hidden;
                Disappear(cbSecondType);
            }
            TypeChanged?.Invoke(this, e);
        }

        private void RangeType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (!IsLoaded) return;
            RangeTypeChanged?.Invoke(this, e);
        }
    }
}
