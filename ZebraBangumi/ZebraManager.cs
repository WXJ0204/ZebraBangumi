using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ZebraBangumi
{
    class ZebraManager
    {
        public static readonly String dataBaseSavePath = @"Database\current.db";

        private ZebraManager()
        {
            ReCheckAccess();
            DBOprator = new DBOpration();
        }
        public static ZebraManager Instance
        {
            get
            {
                if(instance==null)
                {
                    instance = new ZebraManager();
                }
                return instance;
            }
        }
        private static ZebraManager instance;

        private Window mainWindow = null;
        public Window MainWindow { get => mainWindow; set { if (mainWindow == null) mainWindow = value; } }
        public DBOpration DBOprator { get; private set; }
        private ImageCache imageCache;
        public ImageCache ImageCache
        {
            get
            {
                if (imageCache == null) imageCache = new ImageCache();
                return imageCache;
            }
        }
        private VirtualServer server = new VirtualServer();

        private bool hasAccess;
        public Boolean HasAccess
        {
            get
            {
                return hasAccess;
            }
        }

        public Boolean ReCheckAccess()
        {
            hasAccess = server.CheckSeries(Properties.Settings.Default.Series);
            return hasAccess;
        }

        public Boolean CheckDbUpdate()
        {
            return server.CheckUpdate(Properties.Settings.Default.DatabaseCreateTime);
        }

        private bool allowReload = false;
        public void UpdateDataBaseSync()
        {
            DateTime dateTime = server.DoUpdate(dataBaseSavePath);
            Properties.Settings.Default.DatabaseCreateTime = dateTime;
            Properties.Settings.Default.DatabaseVersion = String.Format("v{0}.{1}.{2}", dateTime.Year, dateTime.Month, dateTime.Day);
            allowReload = true;
        }
        public bool Reload()
        {
            if (allowReload) DBOprator.ReLoad();
            else return false;
            allowReload = false;
            return true;
        }
    }
}
