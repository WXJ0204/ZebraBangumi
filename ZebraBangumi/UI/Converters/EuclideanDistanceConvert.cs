using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Media;

namespace MetroExtras.Converters
{
    public class EuclideanDistanceConvert : IMultiValueConverter
    {
        public static IMultiValueConverter Instance { get; set; } = new EuclideanDistanceConvert();

        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            Double sum = 0;
            foreach(Object o in values)
            {
                sum += Math.Pow((Double)o, 2);
            }
            return Math.Sqrt(sum);
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
