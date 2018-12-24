using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace MetroExtras.Converters
{
    public class ExCommanConverter : IValueConverter
    {
        public static ExCommanConverter Instance { get; set; } = new ExCommanConverter();

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (!(parameter is String) || !Double.TryParse((String)parameter, out double par)) par = 1;
            if (value is Double && targetType == typeof(Double))return (Double)value * par;
            return null;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (!(parameter is String) || !Double.TryParse((String)parameter, out double par)) par = 1;
            if (value is Double) return (Double)value / par;
            return null;
        }

    }
}
