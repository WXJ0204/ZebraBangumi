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
    /// NormalSelectBlock.xaml 的交互逻辑
    /// </summary>
    public partial class NormalSelectBlock : UserControl
    {
        public event RoutedEventHandler ItemChecked;
        public event RoutedEventHandler ItemUnchecked;
        public event SelectionChangedEventHandler TypeChanged;
        public void AddItem(String text, BindingBase brushBinding = null)
        {
            ToggleButton tb = new ToggleButton {  Content = text };
            if (brushBinding != null) tb.SetBinding(MetroExtraColor.MainBrushProperty, brushBinding);
            tb.IsChecked = true;
            tb.Checked += Item_Checked;
            tb.Unchecked += Item_Unchecked;
            stkItems.Children.Add(tb);
            Appear(tb);
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

        public String SelectedType
        {
            get
            {
                ComboBoxItem cbi = cbTypeSelect.SelectedValue as ComboBoxItem;
                return cbi.Content as String;
            }
        }

        public void ClearAllItem()
        {
            stkItems.Children.Clear();
        }

        private void Item_Unchecked(object sender, RoutedEventArgs e)
        {
            if (IsLoaded) ItemUnchecked?.Invoke(this, e);
        }

        private void Item_Checked(object sender, RoutedEventArgs e)
        {
            if (IsLoaded) ItemChecked?.Invoke(this, e);
        }

        public void RemoveItem(String text)
        {
            foreach(ToggleButton tb in stkItems.Children)
            {
                if(tb.Content.Equals(text))
                {
                    Disappear(tb, (sender, o) => stkItems.Children.Remove(tb));
                    break;
                }
            }
        }

        public NormalSelectBlock()
        {
            InitializeComponent();
        }

        private void CbTypeSelect_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(IsLoaded) TypeChanged?.Invoke(this, e);
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

    }
}
