using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FolderPacker
{
    [Serializable]
    internal class SimpleFileInfo
    {
        internal String Path
        { 
            get
            {
                return Dir + @"\" + Name;
            }
        }
        internal String Dir;
        internal String Name;
        internal long Size;
        [NonSerialized]
        private FileInfo fileInfo;
        internal SimpleFileInfo(FileInfo fileInfo, String dir)
        {
            this.fileInfo = fileInfo;
            Dir = dir;
            Name = fileInfo.Name;
            Size = fileInfo.Length;
        }
        private SimpleFileInfo() { }

        internal SimpleFileInfo ReFlash()
        {
            SimpleFileInfo now = new SimpleFileInfo();
            now.fileInfo = this.fileInfo;
            now.Dir = this.Dir;
            now.Name = this.Name;
            now.Size = fileInfo.Length;
            return now;
        }
    }
}
