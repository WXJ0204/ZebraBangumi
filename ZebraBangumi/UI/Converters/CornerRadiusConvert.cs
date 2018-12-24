using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;

namespace MetroExtras.Converters
{
    public class CornerRadiusConvert : IValueConverter
    {
        public static CornerRadiusConvert Instance { get; set; } = new CornerRadiusConvert();
        public static IValueConverter GetCornerValue { get; set; } = new GetCornerConvert();

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if(targetType==typeof(CornerRadius))
            {
                if (!(parameter is String) || !Double.TryParse((String)parameter, out double par)) par = 1;
                if (value is Double)
                {
                    if (targetType == typeof(CornerRadius)) return DoubleToCornerRadius((Double)value * par);
                    if (targetType == typeof(Double)) return (Double)value * par;
                }
            }
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (!(parameter is String) || !Double.TryParse((String)parameter, out double par)) par = 1;
            if (value is CornerRadius) return CornerRadiusToDouble((CornerRadius)value) / par;
            if (value is Double) return (Double)value / par;
            return null;
        }

        private static CornerRadius DoubleToCornerRadius(Double d)
        {
            return new CornerRadius(d);
        }

        private static Double CornerRadiusToDouble(CornerRadius cr, String corner = "TopLeft")
        {
            Double dd;
            switch(corner)
            {
                case "TopLeft":
                    dd = cr.TopLeft;
                    break;
                case "TopRight":
                    dd = cr.TopRight;
                    break;
                case "BottomLeft":
                    dd = cr.BottomLeft;
                    break;
                case "BottomRight":
                    dd = cr.BottomRight;
                    break;
                default:
                    dd = 0;
                    break;
            }
            return dd;
        }

        [ValueConversion(typeof(CornerRadius), typeof(Double))]
        private class GetCornerConvert : IValueConverter
        {
            public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                String par;
                par = parameter is String ? (String)parameter : "TopLeft";
                return CornerRadiusToDouble((CornerRadius)value, par);
            }

            public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                throw new NotImplementedException();
            }
        }
    }
}
