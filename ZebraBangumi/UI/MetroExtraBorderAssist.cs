using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;

namespace MetroExtras
{
    public static class MetroExtraBorderAssist
    {
        public static readonly DependencyProperty BorderCornerRadiusProperty = DependencyProperty.RegisterAttached("BorderCornerRadius", typeof(CornerRadius), typeof(MetroExtraBorderAssist), new FrameworkPropertyMetadata(new CornerRadius(0)));

        public static void SetBorderCornerRadius(DependencyObject element, CornerRadius value)
        {
            element.SetValue(BorderCornerRadiusProperty, value);
        }

        public static CornerRadius GetBorderCornerRadius(DependencyObject element)
        {
            return (CornerRadius)element.GetValue(BorderCornerRadiusProperty);
        }
    }
}
