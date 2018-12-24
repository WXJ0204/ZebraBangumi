using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Animation;

namespace ZebraBangumi
{
    public class TabButton:Button
    {
        public TabButton()
        {
            this.Style = (Style)this.FindResource("ExTabButton");
            this.HorizontalAlignment = HorizontalAlignment.Right;
            this.MaxWidth = Width * 1.25;
            this.MaxHeight = Height * 1.25;
            this.MinWidth = Width;
            this.MinHeight = Height;
        }
        public bool Select(Boolean value)
        {
            bool changed = false;
            if (IsEnabled == value) 
            {
                changed = true;
                Double heightTo = value ? MaxHeight : MinHeight;
                Double widthTo = value ? MaxWidth : MinWidth;
                SineAnimate(new PropertyPath(HeightProperty), heightTo);
                SineAnimate(new PropertyPath(WidthProperty), widthTo);
                this.IsEnabled = !value;
            }
            return changed;
        }

        private void SineAnimate(PropertyPath propertyPath, Double to)
        {
            DoubleAnimationUsingKeyFrames easing = new DoubleAnimationUsingKeyFrames { Duration = TimeSpan.FromMilliseconds(400) };
            SineEase efb = new SineEase { EasingMode = EasingMode.EaseOut };
            EasingDoubleKeyFrame edkf = new EasingDoubleKeyFrame(to) { EasingFunction = efb };
            easing.KeyFrames.Add(edkf);
            Storyboard sb = new Storyboard();
            Storyboard.SetTarget(easing, this);
            Storyboard.SetTargetProperty(easing, propertyPath);
            sb.Children.Add(easing);
            sb.Begin();
        }
    }
}
