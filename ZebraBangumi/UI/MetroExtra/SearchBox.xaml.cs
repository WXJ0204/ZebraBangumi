using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MetroExtras
{
    /// <summary>
    /// SearchBox.xaml 的交互逻辑
    /// </summary>
    public partial class SearchBox : TextBox
    {
        public delegate void DoSearchDelegate(SearchBox sender, String searchText);
        public event DoSearchDelegate DoSearch;
        public SearchBox()
        {
            InitializeComponent();
        }

        private void BtnDoSearch_Click(object sender, RoutedEventArgs e)
        {
            if(this.Text!=String.Empty) DoSearch?.Invoke(this, this.Text);
        }

        private void TextBox_PreviewKeyUp(object sender, KeyEventArgs e)
        {
            if(e.Key==Key.Enter) if (this.Text != String.Empty) DoSearch?.Invoke(this, this.Text);
        }
    }
}
