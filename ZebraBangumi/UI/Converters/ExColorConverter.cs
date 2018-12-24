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
    public abstract class ExColorConverter : IValueConverter
    {
        private static IValueConverter brushColorTransform;
        private static ExColorConverter light;
        private static ExColorConverter dark;

        public static IValueConverter BrushColorTransform
        {
            get
            {
                if (brushColorTransform == null) brushColorTransform = new ExBrushColorConverter();
                return brushColorTransform;
            }
            private set { }
        }
        public static ExColorConverter Light
        {
            get
            {
                if (light == null) light = new ExLightColorConverter();
                return light;
            }
            private set { }
        }
        public static ExColorConverter Dark
        {
            get
            {
                if (dark == null) dark = new ExDarkColorConverter();
                return dark;
            }
            private set { }
        }

        private static readonly Color defaultDevColor = Color.FromArgb(0x00, 0x80, 0x80, 0x80);

        public abstract object Convert(object value, Type targetType, object parameter, CultureInfo culture);
        public abstract object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture);


        protected object NormalConvert(object value, Type targetType, object parameter, CultureInfo culture, ExOpration operation)
        {
            //解析参数
            Boolean TryParse2Byte(String str, out Byte result)
            {
                if (Double.TryParse(str, out double dr))
                {
                    if (dr >= 0 && dr <= 1)
                    {
                        result = (Byte)(Byte.MaxValue * dr);
                        return true;
                    }
                    if (dr > 1 && dr <= 255)
                    {
                        result = (Byte)dr;
                        return true;
                    }
                }
                result = 0;
                return false;
            }
            Color devColor;
            if (parameter is String)
            {
                devColor = defaultDevColor;
                String[] vs = ((String)parameter).Split(new char[] { ';' }, 4, StringSplitOptions.RemoveEmptyEntries);
                bool flag = true;
                int len = vs.Length;
                Byte[] bs = new Byte[len];
                for (int i = 0; i < len; i++)
                {
                    if (!TryParse2Byte(vs[i], out bs[i]))
                    {
                        flag = false;
                        break;
                    }
                }
                if (flag)
                {
                    if (len == 1) devColor = Color.FromRgb(bs[0], bs[0], bs[0]);
                    else if (len == 2) devColor = Color.FromArgb(bs[0], bs[1], bs[1], bs[1]);
                    else if (len == 3) devColor = Color.FromRgb(bs[0], bs[1], bs[2]);
                    else if (len == 4) devColor = Color.FromArgb(bs[0], bs[1], bs[2], bs[3]);
                    else devColor = defaultDevColor;
                }
            }
            else
            {
                devColor = defaultDevColor;
            }

            //转换
            if (targetType == typeof(Color))
            {
                if (value is Color) return ExColorOpration((Color)value, devColor, operation);
                if (value is SolidColorBrush) return ExColorOpration(((SolidColorBrush)value).Color, devColor, operation);
            }
            else if (targetType == typeof(Brush))
            {
                if (value is Color) return new SolidColorBrush(ExColorOpration((Color)value, devColor, operation));
                if (value is SolidColorBrush)
                {
                    SolidColorBrush scb = value as SolidColorBrush;
                    SolidColorBrush ns = scb.CloneCurrentValue();
                    ns.Color = ExColorOpration(scb.Color, devColor, operation);
                    return ns;
                }
                if (value is GradientBrush)
                {
                    GradientBrush gb = value as GradientBrush;
                    GradientBrush ng = gb.CloneCurrentValue();
                    foreach (var g in ng.GradientStops)
                    {
                        g.Color = ExColorOpration(g.Color, devColor, operation);
                    }
                    return ng;
                }
            }
            return null;
        }

        private class ExLightColorConverter : ExColorConverter
        {
            public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                return NormalConvert(value, targetType, parameter, culture, ExPlus);
            }

            public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                return NormalConvert(value, targetType, parameter, culture, ExDePlus);
            }
        }

        private class ExDarkColorConverter : ExColorConverter
        {
            public override object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                return NormalConvert(value, targetType, parameter, culture, ExSub);
            }

            public override object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                return NormalConvert(value, targetType, parameter, culture, ExDeSub);
            }
        }

        private class ExBrushColorConverter : IValueConverter
        {
            public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                if (targetType == value.GetType()) return value;
                if (targetType == typeof(Color))
                {
                    if (value is SolidColorBrush) return ((SolidColorBrush)value).Color;
                    if (value is GradientBrush)
                    {
                        GradientBrush gb = value as GradientBrush;
                        return gb.GradientStops[0].Color;
                    }
                }
                if (targetType == typeof(Brush) && value is Color) return new SolidColorBrush((Color)value);
                return null;
            }

            public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                throw new NotImplementedException();
            }
        }

        protected delegate Byte ExOpration(Byte a, Byte b);
        protected static Color ExColorOpration(Color baseColor, Color oprColor, ExOpration operation)
        {
            return new Color
            {
                A = operation(baseColor.A, oprColor.A),
                R = operation(baseColor.R, oprColor.R),
                G = operation(baseColor.G, oprColor.G),
                B = operation(baseColor.B, oprColor.B)
            };
        }

        private static Byte ExPlus(Byte a, Byte b) => (Byte)(a + (1 - ((Single)a) / 255) * b);
        private static Byte ExDePlus(Byte a, Byte b) => (Byte)((255f * (a - b)) / (255 - b));
        private static Byte ExSub(Byte a, Byte b) => (Byte)(a - ((Single)b / 255) * a);
        private static Byte ExDeSub(Byte a, Byte b) => (Byte)(((Single)(255 * a) / (255 - b)));
    }
}
