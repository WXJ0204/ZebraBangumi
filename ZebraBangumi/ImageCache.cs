using iTextSharp.text;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;

namespace ZebraBangumi
{
    public class ImageCache
    {
        private readonly static String cachePicPath = @"images\";

        private readonly ImageSource[,] imageSources = new ImageSource[9, 5];

        private readonly Dictionary<String, int> years = new Dictionary<string, int>()
        {
            {"2018",0 },
            {"2017",1 },
            {"2016",2 },
            {"2015",3 },
            {"2014",4 },
            {"2013",5 },
            {"2012",6 },
            {"2011",7 },
            {"2010",8 },
        };
        private readonly Dictionary<String, int> seasons = new Dictionary<string, int>()
        {
            {"winter",0 },
            {"spring",1 },
            {"summer",2 },
            {"autumn",3 },
            {"全部",4 },
        };

        public ImageCache()
        {
            foreach(var ye in years)
            {
                foreach(var se in seasons)
                {
                    String fn = String.Format("{0}{1}{2}.png", cachePicPath, ye.Key, se.Key);
                    FileInfo fi = new FileInfo(fn);
                    if(fi.Exists)
                    {
                        imageSources[ye.Value, se.Value] = new BitmapImage(new Uri(fi.FullName));
                    }
                }
            }
        }

        public ImageSource GetWordCloud(String year, String season)
        {
            return imageSources[years[year], seasons[season]];
        }

        private List<BitmapSource> bitmaps = new List<BitmapSource>();

        public List<BitmapSource> Bitmaps { get => bitmaps; private set => bitmaps = value; }


        public void AddChartToCache(FrameworkElement chart, String title = null)
        {
            int picWidth, picHeight;
            double picDpi = 96;
            double mag = Properties.Settings.Default.PictureSaveMagnification;
            picWidth = (int)(chart.ActualWidth * mag);
            picHeight = (int)(chart.ActualHeight * mag);
            picDpi *= mag;
            RenderTargetBitmap render = new RenderTargetBitmap(picWidth, picHeight, picDpi, picDpi, PixelFormats.Pbgra32);
            render.Render(chart);
            Bitmaps.Add(render);
        }

        public void SaveAllToPDF(FileInfo fileInfo, ProgressListener progressListener = null)
        {
            if (bitmaps.Count == 0) return;
            float width = Bitmaps.Max((bs) => (float)bs.Width)+60;
            float height = Bitmaps.Max((bs) => (float)bs.Height)+60;
            Document document = new Document(new Rectangle(width, height),30,30,30,30);

            using (FileStream fileStream = fileInfo.Create())
            {
                using (PdfWriter writer = PdfWriter.GetInstance(document, fileStream))
                {
                    document.Open();
                    
                    document.AddTitle(fileInfo.Name);
                    document.AddCreator("ZebraBangumi "+Properties.Settings.Default.SoftwareVersion);

                    int count = bitmaps.Count;
                    int i = 0;
                    foreach(BitmapSource bitmap in Bitmaps)
                    {
                        document.NewPage();
                        BitmapEncoder encoder = new PngBitmapEncoder();
                        var frame = BitmapFrame.Create(bitmap);
                        encoder.Frames.Add(frame);
                        iTextSharp.text.Image pdfImage;
                        using (MemoryStream ms = new MemoryStream())
                        {
                            encoder.Save(ms);
                            ms.Position = 0;
                            pdfImage = iTextSharp.text.Image.GetInstance(ms);
                        }
                        float posX, posY;
                        posX = (width - (float)bitmap.Width) / 2;
                        posY = (height - (float)bitmap.Height) / 2;
                        writer.DirectContent.AddImage(pdfImage, bitmap.Width, 0, 0, bitmap.Height, posX, posY);
                        if(progressListener!=null)
                        {
                            progressListener.Value = ((double)++i) / count * 100;
                        }
                    }
                    document.Close();
                }
            }
            Bitmaps.Clear();
        }

        public int SaveOneToPNG(BitmapSource bitmap, FileInfo fileInfo)
        {
            using (FileStream fileStream = fileInfo.Create())
            {
                BitmapEncoder encoder = new PngBitmapEncoder();
                var frame = BitmapFrame.Create(bitmap);
                encoder.Frames.Add(frame);
                encoder.Save(fileStream);
            }
            int index = bitmaps.FindIndex((o) => o == bitmap);
            if (index != -1) bitmaps.RemoveAt(index);
            return index;
        }

    }
}
