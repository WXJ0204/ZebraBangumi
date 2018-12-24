using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;

namespace MetroExtras
{
    public static class MetroExtraColor
    {
        public static readonly DependencyProperty MainBrushProperty = DependencyProperty.RegisterAttached("MainBrush", typeof(Brush), typeof(MetroExtraColor), new FrameworkPropertyMetadata(Brushes.Red));

        public static void SetMainBrush(DependencyObject element, Brush value)
        {
            element.SetValue(MainBrushProperty, value);
        }

        public static Brush GetMainBrush(DependencyObject element)
        {
            return (Brush)element.GetValue(MainBrushProperty);
        }

        public static readonly DependencyProperty LightBrushProperty = DependencyProperty.RegisterAttached("LightBrush", typeof(Brush), typeof(MetroExtraColor), new FrameworkPropertyMetadata(Brushes.Pink));

        public static void SetLightBrush(DependencyObject element, Brush value)
        {
            element.SetValue(MainBrushProperty, value);
        }
       
        public static Brush GetLightBrush(DependencyObject element)
        {
            return (Brush)element.GetValue(MainBrushProperty);
        }

        public static readonly DependencyProperty DarkBrushProperty = DependencyProperty.RegisterAttached("DarkBrush", typeof(Brush), typeof(MetroExtraColor), new FrameworkPropertyMetadata(Brushes.DarkRed));

        public static void SetDarkBrush(DependencyObject element, Brush value)
        {
            element.SetValue(MainBrushProperty, value);
        }

        public static Brush GetDarkBrush(DependencyObject element)
        {
            return (Brush)element.GetValue(MainBrushProperty);
        }

        public static readonly DependencyProperty MainColorProperty = DependencyProperty.RegisterAttached("MainColor", typeof(Color), typeof(MetroExtraColor), new FrameworkPropertyMetadata(Colors.Red));

        public static void SetMainColor(DependencyObject element, Color value)
        {
            element.SetValue(MainColorProperty, value);
        }

        public static Color GetMainColor(DependencyObject element)
        {
            return (Color)element.GetValue(MainColorProperty);
        }
    }
}
