import requests
from bs4 import BeautifulSoup
import re
import pymysql
 
 
def create():
    db = pymysql.connect("59.110.15.49", "s161010214", "s2019", "s161010214")#连接数据库 
 
    cursor = db.cursor()
    cursor.execute("DROP TABLE IF EXISTS EMP")
 
    sql = """CREATE TABLE EMP (
            ID INT PRIMARY KEY AUTO_INCREMENT,
            LOGO  CHAR(255),
            TITLE CHAR(255),
            PRICE CHAR(20),
            AUTHER CHAR(255) )"""
 
    cursor.execute(sql)
 
    db.close()
 
def insert(value):
    db = pymysql.connect("59.110.15.49", "s161010214", "s2019", "s161010214")
 
    cursor = db.cursor()
    sql = "INSERT INTO EMP(LOGO,TITLE,PRICE,AUTHER) VALUES (%s, %s,  %s,  %s)"
    try:
        cursor.execute(sql,value)
        db.commit()
        print('插入数据成功')
    except:
        db.rollback()
        print("插入数据失败")
    db.close()
 
create()  #创建表
 
#re匹配需要的数据
pertern = re.compile(
    r'<img.*?data-original="(.*?)".*? alt="(.*?)".*?<span class="search_now_price">(.*?)</span>.*?<a.*?单品作者.*?title="(.*?)">.*?</a>',
    re.S)
#添加请求头   修改user-agent来伪装浏览器
headers={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36'}
goods = '英语书'
url = 'http://search.dangdang.com/?key='+ goods
res = requests.get(url,headers=headers)
print(res.status_code)
soup = BeautifulSoup(res.text, 'html.parser')
data = soup.find_all('ul', attrs={'class': 'bigimg'})
data = str(data)
item = re.findall(pertern, data)
for i in item:
    print(i)
    insert(i)
