using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;

namespace MetroExtras.Converters
{
    public class RectangleClipConverter : IMultiValueConverter
    {
        public static IMultiValueConverter Instance { get; set; } = new RectangleClipConverter();
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            Double O2D(Object o) => o is Double ? (Double)o : 0;
            double w = 0, h = 0, rx = 0, ry = 0;
            if(values.Length==1)
            {
                w = O2D(values[0]);
                h = w;
            }
            else if(values.Length==2)
            {
                w = O2D(values[0]);
                h = O2D(values[1]);
            }
            else if(values.Length==3)
            {
                w = O2D(values[0]);
                h = O2D(values[1]);
                rx = O2D(values[2]);
                ry = rx;
            }
            else if (values.Length == 4)
            {
                w = O2D(values[0]);
                h = O2D(values[1]);
                rx = O2D(values[2]);
                ry = O2D(values[3]);
            }
            return new RectangleGeometry(new Rect(new Size(w, h)), rx, ry);
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            object[] back = new object[4];
            RectangleGeometry rg = value as RectangleGeometry;
            back[0] = rg.Rect.Width;
            back[1] = rg.Rect.Height;
            back[2] = rg.RadiusX;
            back[3] = rg.RadiusY;
            return back;
        }
    }
}
