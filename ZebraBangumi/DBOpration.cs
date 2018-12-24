using System;
using System.Collections.Generic;
using System.Data.SQLite;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ZebraBangumi
{
    public class DBOpration
    {
        public event Action ReLoaded;

        private static readonly String DBPATH = ZebraManager.dataBaseSavePath;
        private SQLiteConnection connect;
        String[] Years = new String[] { "2010", "2011", "2012", "2013", "2014", "2015", "2016", "2017", "2018" };
        String[] Season = new string[] { "winter", "spring", "summer", "autumn", "全部" };
        readonly String SecondPagesql1 = "select YEAR,SEASON,TAGS from BANGUMIINFO";
        readonly String SecondPagesql2 = "select YEAR,SEASON,[CAST] from BANGUMIINFO";
        readonly String SecondPagesql3 = "select YEAR,SEASON,Company from BANGUMIINFO";
        readonly String FirstPagesql1 = "select YEAR,SEASON,BroadcastingType from BANGUMIINFO";
        readonly String FirstPagesql2 = "select YEAR,SEASON,BANGUMIType from BANGUMIINFO";
        readonly String FourtgPagesql1 = "select YEAR,SEASON,NAME,RANK from BANGUMIINFO";
        readonly String FourtgPagesql2 = "select YEAR,SEASON,STAFF from BANGUMIINFO";
        private Dictionary<String, int>[,] CompanyDic;
        private Dictionary<String, int>[,] TasDic;
        private Dictionary<String, int>[,] ManCastDic;
        private Dictionary<String, int>[,] WomenCastDic;
        private Dictionary<String, int>[,] BroadTypeDic;
        private Dictionary<String, int>[,] BangumiTypeDic;
        private Dictionary<String, int>[,] DirectorDic;
        private Dictionary<String, int>[,] MusicianDic;
        private Dictionary<String, double>[,] NameDic;
        private Dictionary<String, Dictionary<String, int>[,]> BigDic;
        private Dictionary<String, Dictionary<String, int>> TimeDic;
        private List<String> TimeList;



        public DBOpration()
        {
            ReLoad();
        }

        public void ReLoad()
        {
            connect = new SQLiteConnection("data source=" + DBPATH);
            connect.Open();
            CompanyDic = new Dictionary<string, int>[Years.Length, Season.Length];
            TasDic = new Dictionary<string, int>[Years.Length, Season.Length];
            ManCastDic = new Dictionary<string, int>[Years.Length, Season.Length];
            WomenCastDic = new Dictionary<string, int>[Years.Length, Season.Length];
            BroadTypeDic = new Dictionary<string, int>[Years.Length, Season.Length];
            BangumiTypeDic = new Dictionary<string, int>[Years.Length, Season.Length];
            DirectorDic = new Dictionary<string, int>[Years.Length, Season.Length];
            MusicianDic = new Dictionary<string, int>[Years.Length, Season.Length];
            NameDic = new Dictionary<string, double>[Years.Length, Season.Length];
            BigDic = new Dictionary<string, Dictionary<string, int>[,]>();
            TimeDic = new Dictionary<string, Dictionary<string, int>>();
            TimeList = new List<string>();
            for (int a = 0; a < 9; a++)
                for (int b = 0; b < 5; b++)
                    NameDic[a, b] = new Dictionary<string, double>();
            MakeTimeDic();
            TopCount("Company");
            TopCount("TAGS");
            TopCount("CAST");
            TopCount("BANGUMIType");
            TopCount("BroadcastingType");
            TopCount("NAME");
            TopCount("STAFF");
            BigDic.Add("Company", CompanyDic);
            BigDic.Add("TAGS", TasDic);
            BigDic.Add("ManCast", ManCastDic);
            BigDic.Add("WomenCast", WomenCastDic);
            BigDic.Add("BroadcastingType", BroadTypeDic);
            BigDic.Add("BANGUMIType", BangumiTypeDic);
            BigDic.Add("Director", DirectorDic);
            BigDic.Add("Musician", MusicianDic);

            ReLoaded?.Invoke();
        }

        private String GetSql(String type)
        {
            if (type.Equals("TAGS"))
                return SecondPagesql1;
            else if (type.Equals("Company"))
                return SecondPagesql3;
            else if (type.Equals("CAST"))
                return SecondPagesql2;
            else if (type.Equals("BroadcastingType"))
                return FirstPagesql1;
            else if (type.Equals("BANGUMIType"))
                return FirstPagesql2;
            else if (type.Equals("NAME"))
                return FourtgPagesql1;
            else if (type.Equals("STAFF"))
                return FourtgPagesql2;
            else return null;
        }


        private void TopCount(String type)
        {
            String sql = GetSql(type);

            for (int i = 0; i < Years.Length; i++)
            {
                Dictionary<String, int> dicAll = new Dictionary<string, int>();
                Dictionary<String, int> dicAll1 = new Dictionary<string, int>();
                for (int j = 0; j < Season.Length; j++)
                {
                    SQLiteCommand command = new SQLiteCommand(sql, this.connect);
                    SQLiteDataReader reader = command.ExecuteReader();
                    Dictionary<String, int> dic = new Dictionary<string, int>();
                    Dictionary<String, int> dic1 = new Dictionary<string, int>();

                    if (type.Equals("TAGS"))
                    {
                        while (reader.Read())
                        {
                            if (reader.GetString(0).Equals(this.Years[i]))
                            {


                                if (reader.GetString(0).Equals(this.Years[i]) && reader.GetString(1).Equals(Season[j]))
                                {
                                    String[] tags = Regex.Split(reader.GetString(2), ";", RegexOptions.IgnoreCase);
                                    foreach (String tag in tags)
                                    {
                                        if (!tag.Equals(""))
                                        {
                                            if (dic.ContainsKey(tag))
                                            {
                                                dic[tag]++;

                                            }
                                            else
                                            {
                                                dic.Add(tag, 1);

                                            }

                                            if (dicAll.ContainsKey(tag))
                                            {
                                                dicAll[tag]++;

                                            }
                                            else
                                            {
                                                dicAll.Add(tag, 1);

                                            }



                                        }
                                    }
                                }
                            }
                        }

                    }
                    else if (type.Equals("Company"))
                    {
                        while (reader.Read())
                        {

                            if (reader.GetString(0).Equals(this.Years[i]) && reader.GetString(1).Equals(Season[j]))
                            {
                                if (!reader.GetString(2).Equals(""))
                                {
                                    if (dic.ContainsKey(reader.GetString(2)))
                                    {
                                        dic[reader.GetString(2)]++;

                                    }
                                    else
                                    {
                                        dic.Add(reader.GetString(2), 1);
                                    }

                                    if (dicAll.ContainsKey(reader.GetString(2)))
                                    {
                                        dicAll[reader.GetString(2)]++;

                                    }
                                    else
                                    {
                                        dicAll.Add(reader.GetString(2), 1);
                                    }


                                }



                            }
                        }
                    }
                    else if (type.Equals("BroadcastingType"))
                    {
                        while (reader.Read())
                        {

                            if (reader.GetString(0).Equals(this.Years[i]) && reader.GetString(1).Equals(Season[j]))
                            {
                                if (!reader.GetString(2).Equals(""))
                                {
                                    if (dic.ContainsKey(reader.GetString(2)))
                                    {
                                        dic[reader.GetString(2)]++;

                                    }
                                    else
                                    {
                                        dic.Add(reader.GetString(2), 1);
                                    }

                                    if (dicAll.ContainsKey(reader.GetString(2)))
                                    {
                                        dicAll[reader.GetString(2)]++;

                                    }
                                    else
                                    {
                                        dicAll.Add(reader.GetString(2), 1);
                                    }


                                }



                            }
                        }

                    }
                    else if (type.Equals("BANGUMIType"))
                    {
                        while (reader.Read())
                        {

                            if (reader.GetString(0).Equals(this.Years[i]) && reader.GetString(1).Equals(Season[j]))
                            {
                                if (!reader.GetString(2).Equals(""))
                                {
                                    if (dic.ContainsKey(reader.GetString(2)))
                                    {
                                        dic[reader.GetString(2)]++;

                                    }
                                    else
                                    {
                                        dic.Add(reader.GetString(2), 1);
                                    }

                                    if (dicAll.ContainsKey(reader.GetString(2)))
                                    {
                                        dicAll[reader.GetString(2)]++;

                                    }
                                    else
                                    {
                                        dicAll.Add(reader.GetString(2), 1);
                                    }


                                }



                            }
                        }
                    }
                    else if (type.Equals("NAME"))
                    {


                        while (reader.Read())
                        {
                            if (reader.GetString(0).Equals(this.Years[i]))
                            {


                                if (reader.GetString(0).Equals(this.Years[i]) && reader.GetString(1).Equals(Season[j]))
                                {
                                    String[] tags = Regex.Split(reader.GetString(2), ";", RegexOptions.IgnoreCase);
                                    String tag;
                                    if (tags.Length > 1)
                                        tag = tags[1];


                                    else
                                        tag = tags[0];


                                    double x = 0;
                                    double rank = Double.TryParse(reader.GetString(3), out x) ? x : 0;

                                    if (!NameDic[Array.IndexOf(this.Years, reader.GetString(0)), Array.IndexOf(this.Season, reader.GetString(1))].ContainsKey(tag))
                                        NameDic[Array.IndexOf(this.Years, reader.GetString(0)), Array.IndexOf(this.Season, reader.GetString(1))].Add(tag, rank);
                                    if (!NameDic[Array.IndexOf(this.Years, reader.GetString(0)), 4].ContainsKey(tag))
                                        NameDic[Array.IndexOf(this.Years, reader.GetString(0)), 4].Add(tag, rank);



                                }
                            }
                        }

                    }
                    else if (type.Equals("STAFF"))
                    {
                        while (reader.Read())
                        {
                            if (reader.GetString(0).Equals(this.Years[i]))
                            {


                                if (reader.GetString(0).Equals(this.Years[i]) && reader.GetString(1).Equals(Season[j]))
                                {
                                    String[] tags = Regex.Split(reader.GetString(2), ";", RegexOptions.IgnoreCase);

                                    foreach (String tag in tags)
                                    {
                                        String[] people = Regex.Split(tag, ":", RegexOptions.IgnoreCase);

                                        if (people[0].Equals("导演"))
                                        {
                                            if (!tag.Equals(""))
                                            {
                                                if (dic.ContainsKey(people[1]))
                                                {
                                                    dic[people[1]]++;

                                                }
                                                else
                                                {
                                                    dic.Add(people[1], 1);

                                                }

                                                if (dicAll.ContainsKey(people[1]))
                                                {
                                                    dicAll[people[1]]++;

                                                }
                                                else
                                                {
                                                    dicAll.Add(people[1], 1);

                                                }



                                            }
                                        }
                                        else if (people[0].Equals("音乐"))
                                        {
                                            if (!tag.Equals(""))
                                            {
                                                if (dic1.ContainsKey(people[1]))
                                                {
                                                    dic1[people[1]]++;

                                                }
                                                else
                                                {
                                                    dic1.Add(people[1], 1);

                                                }

                                                if (dicAll1.ContainsKey(people[1]))
                                                {
                                                    dicAll1[people[1]]++;

                                                }
                                                else
                                                {
                                                    dicAll1.Add(people[1], 1);

                                                }



                                            }
                                        }


                                    }

                                }
                            }
                        }

                    }

                    else
                    {

                        while (reader.Read())
                        {
                            if (reader.GetString(0).Equals(this.Years[i]) && reader.GetString(1).Equals(Season[j]))
                            {
                                String[] castMsg = Regex.Split(reader.GetString(2), ";", RegexOptions.IgnoreCase);
                                foreach (String cast in castMsg)
                                {
                                    if (!cast.Equals(""))
                                    {
                                        String[] sex_name = Regex.Split(cast, ":", RegexOptions.IgnoreCase);
                                        if (sex_name[0].Equals("男"))
                                        {
                                            if (dic.ContainsKey(sex_name[1]))
                                            {
                                                dic[sex_name[1]]++;

                                            }
                                            else
                                            {
                                                dic.Add(sex_name[1], 1);

                                            }

                                            if (dicAll.ContainsKey(sex_name[1]))
                                            {
                                                dicAll[sex_name[1]]++;

                                            }
                                            else
                                            {
                                                dicAll.Add(sex_name[1], 1);

                                            }



                                        }
                                        else
                                        {
                                            if (dic1.ContainsKey(sex_name[1]))
                                            {
                                                dic1[sex_name[1]]++;

                                            }
                                            else
                                            {
                                                dic1.Add(sex_name[1], 1);

                                            }

                                            if (dicAll1.ContainsKey(sex_name[1]))
                                            {
                                                dicAll1[sex_name[1]]++;

                                            }
                                            else
                                            {
                                                dicAll1.Add(sex_name[1], 1);

                                            }


                                        }

                                    }
                                }

                            }
                        }
                    }

                    if (type.Equals("Company"))
                        this.CompanyDic[i, j] = dic;
                    else if (type.Equals("TAGS"))
                        this.TasDic[i, j] = dic;
                    else if (type.Equals("CAST"))
                    {
                        this.ManCastDic[i, j] = dic;
                        this.WomenCastDic[i, j] = dic1;
                    }
                    else if (type.Equals("BroadcastingType"))
                        this.BroadTypeDic[i, j] = dic;
                    else if (type.Equals("BANGUMIType"))
                        this.BangumiTypeDic[i, j] = dic;
                    else if (type.Equals("STAFF"))
                    {
                        this.DirectorDic[i, j] = dic;
                        this.MusicianDic[i, j] = dic1;
                    }
                }

                if (type.Equals("TAGS"))
                    this.TasDic[i, this.Season.Length - 1] = dicAll;
                else if (type.Equals("BroadcastingType"))
                    this.BroadTypeDic[i, this.Season.Length - 1] = dicAll;
                else if (type.Equals("BANGUMIType"))
                    this.BangumiTypeDic[i, this.Season.Length - 1] = dicAll;
                else if (type.Equals("Company"))
                    this.CompanyDic[i, this.Season.Length - 1] = dicAll;
                else if (type.Equals("CAST"))
                {
                    this.ManCastDic[i, this.Season.Length - 1] = dicAll;
                    this.WomenCastDic[i, this.Season.Length - 1] = dicAll1;
                }
                else if (type.Equals("STAFF"))
                {
                    this.DirectorDic[i, this.Season.Length - 1] = dicAll;
                    this.MusicianDic[i, this.Season.Length - 1] = dicAll1;
                }


            }

        }


        public Dictionary<String, int> GetFirstPage(String year, String season, String type)
        {
            int yearth = Array.IndexOf(this.Years, year);
            int seasonth = Array.IndexOf(this.Season, season);
            if (type.Equals("BANGUMIType"))
            {
                return BangumiTypeDic[yearth, seasonth];
            }
            else
            {
                return BroadTypeDic[yearth, seasonth];
            }
        }


        public List<int> GetThirdPageCount(String startYear, String startSeason, String endYear, String endSeason, String type, String tag, String typeExtra = "全部")
        {
            List<int> pointList = new List<int>();
            int startYearth = Array.IndexOf(this.Years, startYear);
            int endYearth = Array.IndexOf(this.Years, endYear);
            int startSeasonth = Array.IndexOf(this.Season, startSeason);
            int endSeasonth = Array.IndexOf(this.Season, endSeason);
            if (startYearth * 10 + startSeasonth > endYearth * 10 + endSeasonth) return pointList;
            else if (startSeason.Equals("全部") && endSeason.Equals("全部"))
            {
                for (int ye = startYearth; ye <= endYearth; ye++)
                {
                    int count = 0;
                    if (type.Equals("CAST"))
                    {
                        int man = 0;
                        int women = 0;
                        if (typeExtra.Equals("全部"))
                        {

                            count = (BigDic["ManCast"][ye, 4].TryGetValue(tag, out man) ? man : 0) + (BigDic["WomenCast"][ye, 4].TryGetValue(tag, out women) ? women : 0);
                        }
                        else if (typeExtra.Equals("男")) count = (BigDic["ManCast"][ye, 4].TryGetValue(tag, out man) ? man : 0);
                        else count = (BigDic["WomenCast"][ye, 4].TryGetValue(tag, out women) ? women : 0);

                    }
                    else
                    {
                        int x;
                        count = BigDic[type][ye, 4].TryGetValue(tag, out x) ? x : 0;

                    }
                    pointList.Add(count);
                }
            }

            else
            {

                for (int ye = startYearth; ye <= endYearth; ye++)
                {
                    if (ye == startYearth)
                    {
                        int s;
                        if (startSeasonth != 4)
                        {
                            s = startSeasonth;

                        }
                        else
                           s = 0;
                            
                            for ( int i = s; i < 4; i++)
                            {
                                int count = 0;


                                if (type.Equals("CAST"))
                                {
                                    int man = 0;
                                    int women = 0;
                                    if (typeExtra.Equals("全部"))
                                    {
                                       
                                        count = (BigDic["ManCast"][ye, i].TryGetValue(tag, out man) ? man : 0) + (BigDic["WomenCast"][ye, i].TryGetValue(tag, out women) ? women : 0);
                                    }
                                    else if (typeExtra.Equals("男")) count = (BigDic["ManCast"][ye, i].TryGetValue(tag, out man) ? man : 0);
                                    else count = (BigDic["WomenCast"][ye, i].TryGetValue(tag, out women) ? women : 0);

                                }
                                else
                                {
                                    int x;
                                    count = BigDic[type][ye, i].TryGetValue(tag,out x)?x:0;

                                }
                                pointList.Add(count);

                            }
                        
 
                    }

                    else if (ye < endYearth)
                    {
                        for (int i = 0; i < 4; i++)
                        {

                            int count = 0;
                            if (type.Equals("CAST"))
                            {
                                int man = 0;
                                int women = 0;
                                if (typeExtra.Equals("全部"))
                                {

                                    count = (BigDic["ManCast"][ye, i].TryGetValue(tag, out man) ? man : 0) + (BigDic["WomenCast"][ye, i].TryGetValue(tag, out women) ? women : 0);
                                }
                                else if (typeExtra.Equals("男")) count = (BigDic["ManCast"][ye, i].TryGetValue(tag, out man) ? man : 0);
                                else count = (BigDic["WomenCast"][ye, i].TryGetValue(tag, out women) ? women : 0);

                            }
                            else
                            {
                                int x;
                                count = BigDic[type][ye, i].TryGetValue(tag, out x) ? x : 0;

                            }
                            pointList.Add(count);

                        }
                    }
                    else if (ye == endYearth)
                    {
                        int s;
                        if (endSeasonth != 4)
                             s = endSeasonth;
                        else
                            s = 3;

                            for (int i = 0; i <= s; i++)
                            {
                                int count = 0;

                                if (type.Equals("CAST"))
                                {
                                    int man = 0;
                                    int women = 0;
                                    if (typeExtra.Equals("全部"))
                                    {

                                        count = (BigDic["ManCast"][ye, i].TryGetValue(tag, out man) ? man : 0) + (BigDic["WomenCast"][ye, i].TryGetValue(tag, out women) ? women : 0);
                                    }
                                    else if (typeExtra.Equals("男")) count = (BigDic["ManCast"][ye, i].TryGetValue(tag, out man) ? man : 0);
                                    else count = (BigDic["WomenCast"][ye, i].TryGetValue(tag, out women) ? women : 0);

                                }
                                else
                                {
                                    int x;
                                    count = BigDic[type][ye, i].TryGetValue(tag, out x) ? x : 0;

                                }
                                pointList.Add(count);

                            }
                        

                    }


                }
            }
            return pointList;
        }

        public Dictionary<String, int> GetSecondPageExtra(String year, String season, String type, String typeExtra = "全部")
        {
            Dictionary<String, int> list = new Dictionary<string, int>();
            int yearth = Array.IndexOf(this.Years, year);
            int seasonth = Array.IndexOf(this.Season, season);

            if (type.Equals("Company"))
            {
                var dicSort = from objDic in this.CompanyDic[yearth, seasonth] orderby objDic.Value descending select objDic;
                for (int i = 0; i <= 4; i++)
                {
                    if (dicSort.Count() > i)
                        list.Add(dicSort.ElementAt(i).Key, dicSort.ElementAt(i).Value);
                }
            }

            else if (type.Equals("TAGS"))
            {
                var dicSort = from objDic in this.TasDic[yearth, seasonth] orderby objDic.Value descending select objDic;
                for (int i = 0; i <= 4; i++)
                {
                    if (dicSort.Count() > i)
                        list.Add(dicSort.ElementAt(i).Key, dicSort.ElementAt(i).Value);
                }
            }

            else
            {
                if (typeExtra.Equals("全部"))
                {
                    var dicSort = from objDic in this.ManCastDic[yearth, seasonth] orderby objDic.Value descending select objDic;
                    var dicSort1 = from objDic in this.WomenCastDic[yearth, seasonth] orderby objDic.Value descending select objDic;
                    int i = 0, j = 0;
                    for (int k = 0; k <= 4; k++)
                    {

                        if (dicSort.Count() > i && dicSort1.Count() > j)
                        {
                            if (dicSort.ElementAt(i).Value > dicSort1.ElementAt(j).Value)
                            {
                                list.Add(dicSort.ElementAt(i).Key, dicSort.ElementAt(i).Value);
                                i++;
                            }
                            else
                            {
                                list.Add(dicSort1.ElementAt(j).Key, dicSort1.ElementAt(j).Value);
                                j++;
                            }
                        }
                        else if (dicSort.Count() > i)
                        {
                            list.Add(dicSort.ElementAt(i).Key, dicSort.ElementAt(i).Value);
                            i++;
                        }
                        else
                        {
                            list.Add(dicSort1.ElementAt(j).Key, dicSort1.ElementAt(j).Value);
                            j++;
                        }
                    }


                }
                else if (typeExtra.Equals("男"))
                {
                    var dicSort = from objDic in this.ManCastDic[yearth, seasonth] orderby objDic.Value descending select objDic;
                    for (int i = 0; i <= 4; i++)
                    {
                        if (dicSort.Count() > i)
                            list.Add(dicSort.ElementAt(i).Key, dicSort.ElementAt(i).Value);
                    }
                }
                else
                {
                    var dicSort = from objDic in this.WomenCastDic[yearth, seasonth] orderby objDic.Value descending select objDic;
                    for (int i = 0; i <= 4; i++)
                    {
                        if (dicSort.Count() > i)
                            list.Add(dicSort.ElementAt(i).Key, dicSort.ElementAt(i).Value);
                    }
                }
            }

            return list;
        }


        public List<String> GetThirdPage(String startYear, String startSeason, String endYear, String endSeason)
        {
            List<String> list = new List<string>();
            if (startSeason.Equals("全部") && endSeason.Equals("全部"))
            {
                int start = Array.IndexOf(this.Years, startYear);
                int end = Array.IndexOf(this.Years, endYear);
                for (int time = start; time <= end; time++)
                {
                    list.Add(this.Years[time]);
                }
                return list;

            }
            else
            {
                int start = 0, end = 0;

                if (startSeason.Equals("全部"))
                {
                    start = TimeDic[startYear]["winter"];
                    end = TimeDic[endYear][endSeason];
                }
                else if (endSeason.Equals("全部"))
                {
                    start = TimeDic[startYear][startSeason];
                    end = TimeDic[endYear]["autumn"];
                }
                else
                {
                    start = TimeDic[startYear][startSeason];
                    end = TimeDic[endYear][endSeason];
                }

                for (int time = start; time <= end; time++)
                {
                    list.Add(this.TimeList[time]);
                }

                return list;
            }
        }

        public Dictionary<String, double> GetFourthPage(String year, String season)
        {
            Dictionary<String, double> dic = new Dictionary<string, double>();

            //番名取评分前八
            var dicSort = from objDic in this.NameDic[Array.IndexOf(Years, year), Array.IndexOf(Season, season)] orderby objDic.Value descending select objDic;
            for (int i = 0; i <= 7; i++)
            {
                if (dicSort.Count() > i)
                    dic.Add(dicSort.ElementAt(i).Key, dicSort.ElementAt(i).Value);
            }

            //制作公司取总数前五
            var dicSort1 = from objDic in this.CompanyDic[Array.IndexOf(Years, year), Array.IndexOf(Season, season)] orderby objDic.Value descending select objDic;
            for (int i = 0; i <= 4; i++)
            {
                if (dicSort1.Count() > i)
                    dic.Add(dicSort1.ElementAt(i).Key, dicSort1.ElementAt(i).Value);
            }

            //声优取前五
            var dicSort2 = from objDic in this.ManCastDic[Array.IndexOf(Years, year), Array.IndexOf(Season, season)] orderby objDic.Value descending select objDic;
            var dicSort3 = from objDic in this.WomenCastDic[Array.IndexOf(Years, year), Array.IndexOf(Season, season)] orderby objDic.Value descending select objDic;
            int a = 0, b = 0;
            for (int n = 0; n <= 4; n++)
            {

                if (dicSort2.Count() > a && dicSort3.Count() > b)
                {
                    if (dicSort2.ElementAt(a).Value > dicSort3.ElementAt(b).Value)
                    {
                        dic.Add(dicSort2.ElementAt(a).Key, dicSort2.ElementAt(a).Value);

                        a++;
                    }
                    else
                    {
                        dic.Add(dicSort3.ElementAt(b).Key, dicSort3.ElementAt(b).Value);
                        b++;
                    }
                }
                else if (dicSort.Count() > a)
                {
                    dic.Add(dicSort2.ElementAt(a).Key, dicSort2.ElementAt(a).Value);
                    a++;
                }
                else
                {
                    dic.Add(dicSort3.ElementAt(b).Key, dicSort3.ElementAt(b).Value);
                    b++;
                }

            }

            //导演取前五
            var dicSort4 = from objDic in this.DirectorDic[Array.IndexOf(Years, year), Array.IndexOf(Season, season)] orderby objDic.Value descending select objDic;
            for (int i = 0; i <= 4; i++)
            {
                if (dicSort4.Count() > i)
                    dic.Add(dicSort4.ElementAt(i).Key , dicSort4.ElementAt(i).Value);
            }

            //配乐取前五
            var dicSort5 = from objDic in this.MusicianDic[Array.IndexOf(Years, year), Array.IndexOf(Season, season)] orderby objDic.Value descending select objDic;
            for (int i = 0; i <= 4; i++)
            {
                if (dicSort5.Count() > i)
                    dic.Add(dicSort5.ElementAt(i).Key, dicSort5.ElementAt(i).Value);
            }


            return dic;
        }

        private void MakeTimeDic()
        {
            int t = 0;
            for (int i = 0; i < this.Years.Length; i++)
            {
                String year = this.Years[i];
                Dictionary<String, int> season = new Dictionary<string, int>();
                for (int j = 0; j < this.Season.Length - 1; j++)
                {
                    String aSeason = this.Season[j];
                    season.Add(aSeason, t++);
                    this.TimeList.Add(year + " " + aSeason);
                }
                this.TimeDic.Add(year, season);

            }
        }

        public int GetSecondPage(String year, String season, String type, String tag, String typeExtra = "全部")
        {
            int yearth = Array.IndexOf(this.Years, year);
            int seasonth = Array.IndexOf(this.Season, season);
            int res = 0;
            if (type.Equals("TAGS"))
                return this.TasDic[yearth, seasonth].TryGetValue(tag, out res).Equals(true) ? res : 0;
            else if (type.Equals("Company"))
                return this.CompanyDic[yearth, seasonth].TryGetValue(tag, out res).Equals(true) ? res : 0;
            else if (type.Equals("CAST") && typeExtra.Equals("男"))
                return this.ManCastDic[yearth, seasonth].TryGetValue(tag, out res).Equals(true) ? res : 0;
            else if (type.Equals("CAST") && typeExtra.Equals("女"))
                return this.WomenCastDic[yearth, seasonth].TryGetValue(tag, out res).Equals(true) ? res : 0;
            else
            {
                int i = this.ManCastDic[yearth, seasonth].TryGetValue(tag, out res).Equals(true) ? res : 0;
                int j = this.WomenCastDic[yearth, seasonth].TryGetValue(tag, out res).Equals(true) ? res : 0;
                return i + j;
            }
        }




    }
}
