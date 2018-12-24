using MetroExtras;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
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

namespace ZebraBangumi
{
    /// <summary>
    /// Slide5.xaml 的交互逻辑
    /// </summary>
    public partial class Slide5 : UserControl
    {
        private SaveFileDialog savePngFileDialog = new SaveFileDialog();
        private SaveFileDialog savePdfFileDialog = new SaveFileDialog();
        private ZebraManager manager = ZebraManager.Instance;
        private ImageCache images = ZebraManager.Instance.ImageCache;
        public Slide5()
        {
            InitializeComponent();
            savePngFileDialog.DefaultExt = ".png";
            savePngFileDialog.Filter = "PNG格式图片 (.png)|*.png";
            savePdfFileDialog.DefaultExt = ".pdf";
            savePdfFileDialog.Filter = "PDF文档 (.pdf)|*.pdf";
        }

        public void TurnToThisPage()
        {
            SetThumbnailsCount(images.Bitmaps.Count);
            
            for(int i=0;i<images.Bitmaps.Count; i++)
            {
                Thumbnail tn = spThumbnails.Children[i] as Thumbnail;
                tn.ImageSource = images.Bitmaps[i];
            }
            if (spThumbnails.Children.Count > 0) 
            {
                imgViewing.Source = ((Thumbnail)spThumbnails.Children[0]).ImageSource;
            }
        }

        private void SetThumbnailsCount(int count)
        {
            int realcount = spThumbnails.Children.Count;
            if(realcount>count)
            {
                spThumbnails.Children.RemoveRange(count, realcount - count);
            }
            else
            {
                for (; realcount < count; realcount++) 
                {
                    var tn = new Thumbnail();
                    tn.Click += Tn_Click;
                    spThumbnails.Children.Add(tn);
                }
            }
            int i = 0;
            foreach(var o in spThumbnails.Children)
            {
                Thumbnail tn = o as Thumbnail;
                if (i < count) tn.Visibility = Visibility.Visible;
                else tn.Visibility = Visibility.Collapsed;
                i++;
            }
        }

        private void Tn_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Thumbnail tn) imgViewing.Source = tn.ImageSource;
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            if (this.imgViewing.Source == null) return;
            int index = images.Bitmaps.FindIndex((o) => o == imgViewing.Source);
            if(index!=-1)
            {
                images.Bitmaps.RemoveAt(index);
                this.spThumbnails.Children.RemoveAt(index);
            }
            imgViewing.Source = null;
            //显示第一页
            if (spThumbnails.Children.Count > 0)
            {
                imgViewing.Source = ((Thumbnail)spThumbnails.Children[0]).ImageSource;
            }
        }

        private void BtnSavePng_Click(object sender, RoutedEventArgs e)
        {
            if(!manager.HasAccess)
            {
                new TipDialog("需要认证", "该功能需要认证产品密钥才可使用，请在“关于设置”选项中认证产品密钥").ShowDialog();
                return;
            }
            if (this.imgViewing.Source == null) return;
            savePngFileDialog.InitialDirectory = Properties.Settings.Default.LastSavePath;
            if (savePngFileDialog.ShowDialog(ZebraManager.Instance.MainWindow) == false) return;
            try
            {
                FileInfo fileInfo = new FileInfo(savePngFileDialog.FileName);
                int index = images.SaveOneToPNG((BitmapSource)imgViewing.Source, fileInfo);
                imgViewing.Source = null;
                this.spThumbnails.Children.RemoveAt(index);
                Properties.Settings.Default.LastSavePath = fileInfo.DirectoryName;
            }
            catch (Exception ex)
            {
                new TipDialog("保存时发生错误", ex.Message).ShowDialog();
                return;
            }
            //显示第一页
            if (spThumbnails.Children.Count > 0)
            {
                imgViewing.Source = ((Thumbnail)spThumbnails.Children[0]).ImageSource;
            }
        }

        private void BtnSavePDF_Click(object sender, RoutedEventArgs e)
        {
            if (!manager.HasAccess)
            {
                new TipDialog("需要认证", "该功能需要认证产品密钥才可使用，请在“关于设置”选项中认证产品密钥").ShowDialog();
                return;
            }
            if (this.spThumbnails.Children.Count == 0) return;
            savePdfFileDialog.InitialDirectory = Properties.Settings.Default.LastSavePath;
            if (savePdfFileDialog.ShowDialog(ZebraManager.Instance.MainWindow) == false) return;

            ProgressListener pl = new ProgressListener();
            Thread thread = new Thread(() =>
            {
                SavingWaitingWindows waiting;
                waiting = new SavingWaitingWindows(pl);
                waiting.ShowDialog();
            });
            thread.SetApartmentState(ApartmentState.STA);
            thread.Start();
            try
            {
                FileInfo fileInfo = new FileInfo(savePdfFileDialog.FileName);
                images.SaveAllToPDF(fileInfo, pl);
                SetThumbnailsCount(0);
                imgViewing.Source = null;
                Properties.Settings.Default.LastSavePath = fileInfo.DirectoryName;
            }
            catch (Exception ex)
            {
                new TipDialog("错误", ex.Message).ShowDialog();
                pl.ThrowException(new Exception("exit"));
            }
        }
    }
}
