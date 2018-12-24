using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Media;

namespace MetroExtras
{
    public class ExRipple:Ripple
    {
        public static readonly DependencyProperty CornerRadiusProperty = DependencyProperty.Register("CornerRadius", typeof(CornerRadius), typeof(ExRipple));

        public CornerRadius CornerRadius
        {
            get => (CornerRadius)this.GetValue(CornerRadiusProperty);
            set => this.SetValue(CornerRadiusProperty, value);
        }

        public ExRipple() : base()
        {
            this.Loaded += ExRipple_Loaded;
            this.SizeChanged += ExRipple_SizeChanged;
        }

        private void ExRipple_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            if (!IsLoaded) return;
            if(this.Clip is RectangleGeometry)
            {
                RectangleGeometry geometry = this.Clip as RectangleGeometry;
                geometry.Rect = new Rect(RenderSize);
                CornerRadius cr = CornerRadius;
                geometry.RadiusX = cr.TopLeft;
                geometry.RadiusY = cr.TopLeft;
            }
        }

        private void ExRipple_Loaded(object sender, RoutedEventArgs e)
        {
            CornerRadius cr = CornerRadius;
            if (this.Clip == null || !(this.Clip is RectangleGeometry))
            {
                this.Clip = new RectangleGeometry(new Rect(RenderSize), cr.TopLeft, cr.TopLeft);
            }
            else
            {
                RectangleGeometry geometry = this.Clip as RectangleGeometry;
                geometry.Rect = new Rect(RenderSize);
                geometry.RadiusX = cr.TopLeft;
                geometry.RadiusY = cr.TopLeft;
            }
        }

        
    }
}
