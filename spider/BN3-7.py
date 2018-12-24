# -*- coding: utf-8 -*-

import urllib2
from lxml import html
from lxml import etree
import requests
import time
import threadpool
import threading
import bs4
import re
import sqlite3
import os
from langconv import *


HrefList = []
hrefOutList = []
infoBox = []
path = "data.db"
staffType = [u"导演", u"分镜", u"脚本", u"音乐", u"人物设定", u"美术监督"]
bangumiType = [u"特摄改", u"轻小说改", u"轻改", u"小说改", u"原创", u"漫改", u"漫画改", u"游戏改", u"GAL改"]
broadcastingType = [u"TV", u"OAD", u"OVA", u"剧场版", u"WEB"]
tagListss = [u"搞笑", u"百合", u"治愈", u"后宫", u"泡面番", u"校园", u"科幻", u"童年", u"恋爱", u"热血", u"日常",
             u"奇幻", u"吐槽", u"萝卜", u"战斗", u"治愈系", u"吉卜力", u"青春", u"催泪", u"推理", u"悬疑", u"经典",
             u"猎奇", u"耽美", u"燃", u"音乐", u"纯爱", u"偶像", u"励志", u"穿越", u"机战", u"爱情", u"致郁",u"橘里橘气"]
Spring = [4, 5, 6]
Summer = [7, 8, 9]
Autumn = [10, 11, 12]
Winter = [1, 2, 3]


def Traditional2Simplified(sentence):
    '''
    将sentence中的繁体字转为简体字
    :param sentence: 待转换的句子
    :return: 将句子中繁体字转换为简体字之后的句子
    '''
    sentence = Converter('zh-hans').convert(sentence)
    return sentence


class SQLDataBase:

    def __init__(self, path1):
        self.dataBasePath = path1
        self.dataBaseConnection = sqlite3.connect(self.dataBasePath)

    def createTable(self):
        self.dataBaseConnection.cursor().execute('''CREATE TABLE BANGUMIINFO
       (NAME         TEXT    NOT NULL,
       YEAR          TEXT    NOT NULL,
       MONTH         TEXT    NOT NULL,
       DAY           TEXT    NOT NULL,
       SEASON         TEXT    NOT NULL,
       EPISODE        TEXT,
       BroadcastingType TEXT    NOT NULL,
       BANGUMIType    TEXT,
       Company        TEXT,
       STAFF          TEXT,
       CAST          TEXT    NOT NULL,
       TAGS           TEXT,
       RANK           TEXT);''')

    def insertTable(self, Mlist):
        self.dataBaseConnection.text_factory = str
        self.dataBaseConnection.cursor().execute("INSERT INTO BANGUMIINFO (NAME,YEAR, MONTH, DAY, SEASON, EPISODE, BroadcastingType, BANGUMIType, Company, STAFF, CAST, TAGS, RANK) \
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )", Mlist)


msql = SQLDataBase(path)
print len(msql.dataBaseConnection.cursor().execute(
    "select *  from sqlite_master where type='table' and name = 'BANGUMIINFO'").fetchall())
if len(msql.dataBaseConnection.cursor().execute(
        "select *  from sqlite_master where type='table' and name = 'BANGUMIINFO'").fetchall()) == 0:
    msql.createTable()


if os.path.exists("cvlist.txt") and os.path.getsize("cvlist.txt") > 0:
    with open("cvlist.txt", "r") as f:
        strs = f.read()
        CvList = {}
        for str1 in strs.split("\n"):
            if len(str1) > 0:
                str2 = str1.split(":")
                str3 = str2[0].split(",")
                CvList[str3[0].decode("utf8")] = [str3[1].decode("utf8"), str2[1].decode("utf8")]
else:
    CvList = {}


def pool_build(name, argv, ran):
    pool = threadpool.ThreadPool(ran, resq_size=ran)
    reqs = threadpool.makeRequests(name, argv, callback=())
    [pool.putRequest(req) for req in reqs]
    pool.wait()


def lxml_scraper(url1):
    try:
        page = etree.HTML(getHtml(url1))
        hrefs = page.xpath(u"//a[@class='subjectCover cover ll']")
        for href in hrefs:
            try:
                hrefOutList.append(href.attrib["href"]) #取得网址
            except:
                continue
    except:
        pass


def startOutList(url_startList):
    if os.path.exists("outHref.txt") and os.path.getsize("outHref.txt") > 0:
        with open("outHref.txt", "r") as f:
            strs = f.read()
            [hrefOutList.append(str1) for str1 in strs.split("\n")]
    else:
        urlseed = []
        for i in range(len(url_startList)):
            number1 = re.findall(r"\d+&nbsp;/&nbsp;\d+", getHtml(url_startList[i]))[0].split("&nbsp;")[2]
            for j in range(1, int(number1)):
                urlseed.append(url_startList[i] + str(j))
    #print urlseed
        pool_build(lxml_scraper, urlseed, 30)
        print hrefOutList
        with open("outHref.txt", "w") as f:
            strs = ""
            for str1 in hrefOutList:
                strs += str1 + "\n"
            f.write(strs)



def imgGetHref(url1):
    try:
        html1 = getHtml(url1)
        soup = bs4.BeautifulSoup(html1,"html.parser")
        tags = soup.find("ul", {"class": "browserFull", "id": "browserItemList"})
        for tag in tags.find_all("li"):
            str1 = tag.find("span", {"class": "tip_j"})
            if str1 is not None:
                number1 = re.findall(r'\d+', str1.string)[0]
                if int(number1) > 10:
                    href = tag.find("a", {"class": "subjectCover cover ll"})["href"]
                    if href not in hrefOutList:
                        HrefList.append("http://bangumi.tv" + href)  # 取得网址
    except:
        pass
    #print HrefList


def getHtml(url):
    try:
        r = requests.get(url, timeout=30)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        return r.text.encode("utf8")
    except:
        return ""


class MyDict(dict):

    def makeDict(self, str1, str2):
        if str1 not in self.keys():
            self[str1] = [str2]
        else:
            self[str1].append(str2)


Infodict = MyDict()


def getSeason(str1):
    if str1 in Spring:
        return "spring"
    if str1 in Summer:
        return "summer"
    if str1 in Autumn:
        return "autumn"
    if str1 in Winter:
        return "winter"


def list2Str(list1):
    if len(list1) > 0:
        str1 = list1[0]
        for i in range(1, len(list1)):
            str1 += ";" + list1[i]
        return str1
    else:
        return ""


def getInfoBox(url):
    html1 = getHtml(url)
    page = etree.HTML(html1)
    if page is not None:
        names = page.xpath(u"//a[@property='v:itemreviewed']")
        infoList = page.xpath(u"//ul[@id='infobox']/li//span")
        cvList = page.xpath(u"//a[@rel='v:starring']")
        #try:
        if len(names) > 0:
            staff = []
            #infoDict = MyDict()
            name = names[0].text
            passList = []
            nameList = []
            nameList.append(name)
            company = ""
            episode = ""
            rank = ""
            for info in infoList:
                str1 = info.text[0:-2]
                if info.tail is not None:
                    str2 = info.tail.strip("(")#bug
                else:
                    #print type(info)
                    str2 = info.getparent().getchildren()[1].text#bug

                if str2 is not None:
                    passList.append(Traditional2Simplified(str2))
                if str1 == u"中文名" or str1 == u"别名":
                    nameList.append(str2)
                if str1 == u"放送开始" or str1 == u"上映年度" or str1 == u"开始" or str1 == u"发售日": #bug 待改
                    time1 = re.findall(r"\d+", str2)
                #print time
                    if len(time1) > 0:
                        year = time1[0]
                        if len(time1) > 1:
                            month = time1[1]
                            season = getSeason(int(month))
                        else:
                            month = ""
                            season = ""
                        if len(time1) > 2:
                            day = time1[2]
                        else:
                            day = ""

                #year, month, day = time[0], time[1], time[2]
                if str1 == u"话数":
                    episode = str2
                if str1 == u"动画制作" or str1 == u"映像制作":
                    company = str2.strip(u"、")
                if str1 in staffType or Traditional2Simplified(str1) in staffType:
                    staff.append(str1 + ":" + Traditional2Simplified(str2))
                #print "4"

            cast = []
            for cv in cvList:
                cvname = ""
                cvtemp = ""
                sex = ""
                #print "http://bangumi.tv" + cv.attrib["href"]
                if CvList.has_key(cv.text):
                    cast.append(CvList[cv.text][1] + ":" + CvList[cv.text][0])
                else:
                    page2 = etree.HTML(getHtml("http://bangumi.tv" + cv.attrib["href"]))
                    if page2 is not None:
                        for pas in page2.xpath(u"//span[@class='tip']"):
                            #print pas.text[0: -2]
                            if pas.text[0: -2] == u"性别":
                                #print pas.text[0: -2]
                                sex = pas.tail
                            if pas.text[0: -2] == u"简体中文名":
                                #print pas.text
                                cvname = pas.tail
                            if pas.text[0: -2] == u"别名":
                                if len(re.compile(u"[\u4e00-\u9fa5]+").findall(pas.tail)) > 0:
                                    #print re.compile(u"[\u4e00-\u9fa5]+").findall(pas.tail)[0]
                                    cvtemp = Traditional2Simplified(re.compile(u"[\u4e00-\u9fa5]+").findall(pas.tail)[0])
                        if len(cvname) == 0:
                            cvname = cvtemp

                    if len(sex) > 0 and len(cvname) > 0:
                        cast.append(sex + ":" + cvname)
                        CvList[cv.text] = [cvname, sex]

                if CvList.has_key(cv.text):
                    passList.append(CvList[cv.text][0])
                else:
                    passList.append(cvname)

            #print "3"

            tags = page.xpath(u"//a[@class='l']/span")

        #print passList

            tagsOut = []
        # for ps in passList:
        #     print ps

            bangumi_type = ""
            broadcasting_type = ""

            for tag in tags:
                #print tag.text[0: 4]
                if tag.text is not None:
                    tagtext = Traditional2Simplified(tag.text)
                    if tag.text[0: 4] != year and tagtext not in passList:
                        if tagtext in bangumiType:
                            if tagtext == u"轻小说改" or tagtext == u"轻改":
                                bangumi_type = "小说改"
                            elif tagtext == u"漫改":
                                bangumi_type = "漫画改"
                            elif tagtext == u"GAL改":
                                bangumi_type = "游戏改"
                            else:
                                bangumi_type = tagtext
                            passList.append(tagtext)

                        if tagtext in broadcastingType:
                            broadcasting_type = tagtext


            rank = page.xpath(u"//span[@class='number'][@property='v:average']")[0].text

            if bangumi_type == "":
                bangumi_type = "原创"
            if broadcasting_type == "":
                broadcasting_type = "TV"

            passList.append(bangumi_type)
            passList.append(broadcasting_type)

            for tag in tags:
                if tag.text is not None:
                    tagtext = Traditional2Simplified(tag.text)
                    if tagtext in tagListss:
                        tagsOut.append(tagtext)

            print (url, "ok")

            infoBox.append([list2Str(nameList), year, month, day, season, episode, broadcasting_type, bangumi_type,
                            company, list2Str(staff), list2Str(cast), list2Str(tagsOut), rank])

            time.sleep(0.5)

        # except:
        #     print "1"
        #     pass
            #Infodict[name] = infoDict
    else:
        print url
        pass


start = time.time()
startOutList(["http://bangumi.tv/anime/tag/国产?page=", "http://bangumi.tv/anime/tag/欧美?page=",
              "http://bangumi.tv/anime/tag/美国?page="])
#print hrefOutList

# Urlseed1 = []
# for j in range(2010, 2014):
#     number1 = re.findall(r"\d+&nbsp;/&nbsp;\d+",
#         getHtml("http://bangumi.tv/anime/browser/airtime/" + str(j)))[0].split("&nbsp;")[2]
#     for i in range(1, int(number1) + 1):
#         Urlseed1.append("http://bangumi.tv/anime/browser/airtime/" + str(j) + "?page=" + str(i))
#
# pool_build(imgGetHref, Urlseed1, 50)
#
# #startOutList(["http://bangumi.tv/anime/browser/airtime/2010?page="], HrefList)
# end = time.time()
# print end-start
#
# start = time.time()
# pool_build(getInfoBox, HrefList, 50)
# end = time.time()
# print end - start
# # href_pool = threadpool.ThreadPool(20)
# # reqs = threadpool.makeRequests(getInfoBox, [((href), None) for href in HrefList])
# # [href_pool.putRequest(req) for req in reqs]
# # href_pool.wait()
#
# for info in infoBox:
#     msql.insertTable(info)
#     msql.dataBaseConnection.commit()
#
#
# del infoBox[:]
#
# Urlseed2 = []
# for j in range(2014, 2017):
#     number1 = re.findall(r"\d+&nbsp;/&nbsp;\d+",
#         getHtml("http://bangumi.tv/anime/browser/airtime/" + str(j)))[0].split("&nbsp;")[2]
#     for i in range(1, int(number1) + 1):
#         Urlseed2.append("http://bangumi.tv/anime/browser/airtime/" + str(j) + "?page=" + str(i))
#
# pool_build(imgGetHref, Urlseed2, 50)
#
# #startOutList(["http://bangumi.tv/anime/browser/airtime/2010?page="], HrefList)
# end = time.time()
# print end-start
#
# start = time.time()
# pool_build(getInfoBox, HrefList, 50)
# end = time.time()
# print end - start
# # href_pool = threadpool.ThreadPool(20)
# # reqs = threadpool.makeRequests(getInfoBox, [((href), None) for href in HrefList])
# # [href_pool.putRequest(req) for req in reqs]
# # href_pool.wait()
#
# for info in infoBox:
#     msql.insertTable(info)
#     msql.dataBaseConnection.commit()
#
# del infoBox[:]

Urlseed3 = []
for j in range(2010, 2013):
    number1 = re.findall(r"\d+&nbsp;/&nbsp;\d+",
        getHtml("http://bangumi.tv/anime/browser/airtime/" + str(j)))[0].split("&nbsp;")[2]
    print number1
    for i in range(1, int(number1) + 1):
        Urlseed3.append("http://bangumi.tv/anime/browser/airtime/" + str(j) + "?page=" + str(i))

pool_build(imgGetHref, Urlseed3, 50)


#startOutList(["http://bangumi.tv/anime/browser/airtime/2010?page="], HrefList)

# for href in HrefList:
#     getInfoBox(href)
#     time.sleep(1)
pool_build(getInfoBox, HrefList, 50)




del HrefList[:]

number1 = re.findall(r"\d+&nbsp;/&nbsp;\d+",
        getHtml("http://bangumi.tv/anime/browser/airtime/2013"))[0].split("&nbsp;")[2]

for i in range(1, int(number1) + 1):
    Urlseed3.append("http://bangumi.tv/anime/browser/airtime/2013" + "?page=" + str(i))

for href in HrefList:
    getInfoBox(href)
    time.sleep(1)

del HrefList[:]

Urlseed2 = []
for j in range(2014, 2019):
    number1 = re.findall(r"\d+&nbsp;/&nbsp;\d+",
        getHtml("http://bangumi.tv/anime/browser/airtime/" + str(j)))[0].split("&nbsp;")[2]
    print number1
    for i in range(1, int(number1) + 1):
        Urlseed2.append("http://bangumi.tv/anime/browser/airtime/" + str(j) + "?page=" + str(i))

pool_build(imgGetHref, Urlseed2, 50)

pool_build(getInfoBox, HrefList, 50)

end = time.time()
print end - start
# href_pool = threadpool.ThreadPool(20)
# reqs = threadpool.makeRequests(getInfoBox, [((href), None) for href in HrefList])
# [href_pool.putRequest(req) for req in reqs]
# href_pool.wait()

with open("cvlist.txt", "w") as f:
    cvstr = ""
    for key in CvList.keys():
        cvstr += key.encode("utf8") + "," + CvList[key][0].encode("utf8") + ":" + CvList[key][1].encode("utf8") + "\n"
    f.write(cvstr)

for info in infoBox:
    msql.insertTable(info)
    msql.dataBaseConnection.commit()
msql.dataBaseConnection.close()

#update cvlist.txt

########################################################################################################################
#######start code
########################################################################################################################
# start = time.time()
#
# hrefseed = []
# for i in range(1, 10):
#     hrefseed.append(getHtml("http://bangumi.tv/anime/browser?page="+ str(i)))
#     time.sleep(0.5)
#
# href_pool = threadpool.ThreadPool(20)
# reqs = threadpool.makeRequests(lxml_scraper, hrefseed)
# for req in reqs:
#     href_pool.putRequest(req)
# href_pool.wait()
#
# print HrefList
#
# url_pool = threadpool.ThreadPool(20)
# reqs = threadpool.makeRequests(getInfoBox, HrefList)
# for req in reqs:
#     url_pool.putRequest(req)
# url_pool.wait()
#
# print Infodict
#
# end = time.time()
# print end - start

########################################################################################################################
#######end code
########################################################################################################################

# def main():
#     start = time.time()
#     for i in range(10):
#         getHtml("http://bangumi.tv/anime/browser?page=" + str(i))
#     end = time.time()
#     print end - start
#     start = time.time()
#     for i in range(10):
#         getHtml2("http://bangumi.tv/anime/browser?page=")
#     end = time.time()
#     print end - start
#
#
# main()