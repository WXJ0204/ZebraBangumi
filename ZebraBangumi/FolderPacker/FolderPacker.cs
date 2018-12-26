using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;

namespace FolderPacker
{
    public class FolderPacker
    {
        private List<SimpleFileInfo> allFiles = new List<SimpleFileInfo>();

        public bool PackFolder(String folderPath, Stream targetStream)
        {
            if (!targetStream.CanWrite) return false;
            DirectoryInfo directoryInfo = new DirectoryInfo(folderPath);
            String parent = directoryInfo.Parent.FullName + @"\";
            GetFiles(directoryInfo, directoryInfo.Name);
            BinaryFormatter formatter = new BinaryFormatter();
            formatter.Serialize(targetStream, allFiles);
            foreach (SimpleFileInfo sfi in allFiles)
            {
                using (FileStream fileStream = File.Open(parent + sfi.Path, FileMode.Open))
                {
                    fileStream.CopyTo(targetStream);
                }
                //Console.WriteLine("{0} copy complete!", sfi.Path);
            }
            allFiles = null;
            return true;
        }

        private void GetFiles(DirectoryInfo thisDirectory, String dir)
        {
            foreach(FileInfo fi in thisDirectory.GetFiles())
            {
                allFiles.Add(new SimpleFileInfo(fi, dir));
            }
            foreach(DirectoryInfo di in thisDirectory.GetDirectories())
            {
                GetFiles(di, dir + @"\" + di.Name);
            }
        }

        public bool UnPackFolder(String targetPath, Stream sourceStream)
        {
            if (!sourceStream.CanRead) return false;
            BinaryFormatter formatter = new BinaryFormatter();
            allFiles = (List<SimpleFileInfo>)formatter.Deserialize(sourceStream);
            foreach(SimpleFileInfo sfi in allFiles)
            {
                Directory.CreateDirectory(targetPath + @"\" + sfi.Dir);
                using(FileStream fileStream = File.Open(targetPath + @"\" + sfi.Path, FileMode.Create))
                {
                    int s = 1024;
                    byte[] buffer = new byte[s];
                    long t = sfi.Size / s;
                    int l = (int)(sfi.Size % s);
                    for (long i = 0; i < t; i++) 
                    {
                        sourceStream.Read(buffer, 0, s);
                        fileStream.Write(buffer, 0, s);
                    }
                    sourceStream.Read(buffer, 0, l);
                    fileStream.Write(buffer, 0, l);
                }
                Console.WriteLine("{0} copy complete!", sfi.Path);
            }
            return true;
        }
    }
}
