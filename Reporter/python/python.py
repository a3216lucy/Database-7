import json
# import time
# print(json.dumps('Hello world'))
# time.sleep(3)
# print(json.dumps({'title': ('baz'),'content':('aaa'),'url':('ccc')}))
# time.sleep(3)
import requests
from bs4 import BeautifulSoup
import re

def Beauty(url): #將網址導入並套用BeautifulSoup套件
  resource = requests.get(url) #得到網站的原始碼
  soup = BeautifulSoup(resource.text, 'html.parser') #套用BeautifulSoup
  return soup
def BeautyStr(txt): #對無類別的變數再套用一次套件
  return BeautifulSoup(str(txt),'lxml') #txt_title原本沒有類別，需轉成string再用BeautifulSoup做編輯後才能使用該語法
def BeautyFindAll(topics_soup,tag,key): #topics_soup為已套用bs之內碼，tag為網址標籤類別，key為欲搜尋class名稱的關鍵字。尋找符合的行列後"去除html編碼"並轉成string list輸出
  topics_soup = (BeautyStr(topics_soup)).find_all(tag,class_=re.compile(key))
  topics_soup_txt = BeautyStr(topics_soup).get_text()
  topics_soup_txt = str(topics_soup_txt).strip('[]')
  topics_list = []
  topics_list = topics_soup_txt.split(',')
  topics_list_s = []
  for a in topics_list:
    topics_list_s.append(a.strip(' ')) #因為莫名的某些文字前方會多出一個半形空格，因此以此刪除。
  return topics_list_s
def Content(soup): #爬出一篇專題內文+文章
  txt_title = soup.find('h1') #尋找開頭為<h1>的第一筆資料
  title = (BeautyStr(txt_title)).string
  #content = []
  txt = soup.find('div',class_='s1912usa-1 bYtlIh') #尋找<div>標籤中class名稱為s1912usa-1 bYtlIh的第一筆資料
  txt_b = (BeautyStr(txt)).find('blockquote') #尋找標籤<blockquote>
  contents=''
  if (BeautyStr(txt_b)).get_text()!="None":
      contents+=(BeautyStr(txt_b)).get_text()
  txt_p = txt.find_all('p')

  for x in txt_p:
      contents+=x.get_text()
  
  down_topics_url = soup.find('div',class_=re.compile('cards-container')) #尋找<div>標籤中class名稱中含有cards-container文字的行列
  url_list = []
  for u in (BeautyStr(down_topics_url)).find_all('a'): #尋找含有<a>標籤的行列
    url_list.append(u['href']) #輸出href的內文
  down_topics = soup.find_all('div',class_=re.compile('text-card'))
  t_list = BeautyFindAll(down_topics,'div','title')
  d_list = BeautyFindAll(down_topics,'div','description')
  date_list = BeautyFindAll(down_topics,'p','date')
  print(json.dumps({'title':title,'content':contents,'url':'aaa'}))
  #count = 0
  #for t,d,date,url in zip(t_list,d_list,date_list,url_list):
  #  count+=1
#   print("==================")

# <main>
topic_url = "https://www.twreporter.org/topics"
# topic = Beauty(topic_url)
resource = requests.get(topic_url) #得到網站的原始碼
soup = BeautifulSoup(resource.text, 'html.parser') #套用BeautifulSoup
topic_pages = soup.find_all('div',class_=re.compile('pagination'))
topic_pagesf = topic_pages[len(topic_pages)-2]
pages = (BeautyStr(topic_pagesf).span).string
#print(json.dumps('Hello'))
for page in reversed(range(0,int(pages)+1)):
  topic_url = "https://www.twreporter.org/topics?page="+str(page)
  topic_soup = Beauty(topic_url)

  list_t = BeautyFindAll(topic_soup,"h2","TopicTitle")
  list_d = BeautyFindAll(topic_soup,"div","TopicDescription")
  list_ds = list(set(list_d))#去除相同的內文
  list_ds.sort(key=list_d.index)#排回原本的排序
  list_da = BeautyFindAll(topic_soup,"div","TopicDate")
  list_url = []
  url = BeautyStr(topic_soup).find_all('a',class_=re.compile('StyledLink'))
  for a in url:
      list_url.append(a['href'])
  #     del list_url[0] #刪除陣列第0項

  list_url = reversed(list_url)
  for u in list_url:
      u_soup = Beauty('https://www.twreporter.org'+u)
      Content(u_soup)
  #     break
  # break
#   for t,d,date,url in zip(ten_list_t,ten_list_ds,ten_list_da,ten_list_url):
# print("URL:"+reporter_url+url+"\n"+"Title:"+t+"\n"+"Description:"+d+"\n"+"Date:"+date+"\n")