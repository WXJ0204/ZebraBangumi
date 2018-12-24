using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZebraBangumi
{
    public static class ChineseValueTranslater
    {
        public static String GetTranslateName(String name)
        {
            return c2e.TryGetValue(name, out String tName) ? tName : name;
        }
        private readonly static Dictionary<String,String> c2e= new Dictionary<String, String>
        {
            {"年","YEAR" },
            {"季节","SEASON" },
            {"放送方式","BroadcastingType" },
            {"番剧类型","BANGUMIType" },
            {"声优","CAST" },
            {"分类标签","TAGS" },
            {"制作公司","Company" },
            {"春季","spring" },
            {"夏季","summer" },
            {"秋季","autumn" },
            {"冬季","winter" },
            {"男性","男" },
            {"女性","女" },
            {"全年","全部" },
        };
    }


}
