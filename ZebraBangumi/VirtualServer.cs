using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZebraBangumi
{
    public class VirtualServer
    {
        private static readonly String serverDataBaseFilePath = @"VirtualServer\Lastest.db";

        public VirtualServer()
        {
            if(!Directory.Exists("VirtualServer")) Directory.CreateDirectory("VirtualServer");
        }

        public bool CheckSeries(String series)
        {
            if (series == "AAAA-BBBB-CCCC-DDDD-EEEE") return true;
            else return false;
        }

        public bool CheckUpdate(DateTime lastUpdateTime)
        {
            FileInfo info = new FileInfo(serverDataBaseFilePath);
            if (!info.Exists) return false;
            if (info.LastWriteTime > lastUpdateTime) return true;
            return false;
        }

        public DateTime DoUpdate(String targetFilePath)
        {
            FileInfo target = new FileInfo(targetFilePath);
            if (!target.Directory.Exists) target.Directory.Create();
            File.Copy(serverDataBaseFilePath, targetFilePath, true);
            Properties.Settings.Default.LastDatabaseUpdateTime = System.DateTime.Now;
            return new FileInfo(serverDataBaseFilePath).LastWriteTime;
        }
    }
}
