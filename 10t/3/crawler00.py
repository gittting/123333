import requests
import re
 
def get_html_text(url):

#user-agent:

# Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36

#User-Agent 为cookis再下拉的内容，chorm浏览器按F12键

   headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.121 Safari/537.36'}
   try:

# coo后面 为自己登陆淘宝后。输入搜索后的cookies
        coo='miid=5550533931182706749; t=cf33063dcc40062833eeab52adc6d1a4; thw=cn; _m_h5_tk=8db02aa3c177a57a9972d7288d904f99_1557157287276; _m_h5_tk_enc=05866664b9c37c3ef6256a629acdb669; cna=H0WYEkbxT0MCAXx/xQ9Drd7U; hng=CN%7Czh-CN%7CCNY%7C156; tracknick=%5Cu6DD8%5Cu6DD8%5Cu6DD8%5Cu3002%5Cu3002%5Cu5C81%5Cu6708; lgc=%5Cu6DD8%5Cu6DD8%5Cu6DD8%5Cu3002%5Cu3002%5Cu5C81%5Cu6708; tg=0; enc=FFfnOr%2Bs14i7a%2F4a%2Fi4pQzsLMWd5hM%2FYrJH7SfLXDBq0a3QDXOq4qdvQ%2FR7n%2FFG6nuH65Iuvle6NXvW6uJ9VNw%3D%3D; x=e%3D1%26p%3D*%26s%3D0%26c%3D0%26f%3D0%26g%3D0%26t%3D0%26__ll%3D-1%26_ato%3D0; UM_distinctid=16a8d620f632aa-0311ab6cb52e7a-e323069-100200-16a8d620f6411f; v=0; cookie2=139ee96a85dd68aca7807aae983fe101; _tb_token_=ef895f375e3dd; dnk=%5Cu6DD8%5Cu6DD8%5Cu6DD8%5Cu3002%5Cu3002%5Cu5C81%5Cu6708; mt=ci=23_1&np=; unb=3006956503; sg=%E6%9C%8837; _l_g_=Ug%3D%3D; skt=0c01838e52f6e0b2; cookie1=UNaA2Qb38hc59opR2N%2Fs%2FfQ4ajuQy3joOVFRUi2O6kM%3D; csg=60a1777e; uc3=vt3=F8dByEawNEN6RDfOSa8%3D&id2=UNDUKSXW9i%2Fl%2FQ%3D%3D&nk2=r4H9KKk5VkLYbb6ndG4%3D&lg2=Vq8l%2BKCLz3%2F65A%3D%3D; existShop=MTU1NzE5NzI4MA%3D%3D; _cc_=W5iHLLyFfA%3D%3D; _nk_=%5Cu6DD8%5Cu6DD8%5Cu6DD8%5Cu3002%5Cu3002%5Cu5C81%5Cu6708; cookie17=UNDUKSXW9i%2Fl%2FQ%3D%3D; alitrackid=www.taobao.com; lastalitrackid=www.taobao.com; swfstore=241810; JSESSIONID=2794C8A78A02AFD85F1538F420EF6B8F; uc1=cookie16=VFC%2FuZ9az08KUQ56dCrZDlbNdA%3D%3D&cookie21=V32FPkk%2FgPzW&cookie15=VFC%2FuZ9ayeYq2g%3D%3D&existShop=false&pas=0&cookie14=UoTZ48QMNHNctA%3D%3D&tag=8&lng=zh_CN; l=bBSmW2m7vDr3IUWEBOCwNZavai_9hIRAguWbHCUMi_5aw1T1bhQOlKn5Re96Vj5R_68B4R15R8e9-etkZ; isg=BIGB-FSEuQB64tU0YquoMiSvkM2R7AWsO_4D9-PWHwjnyqGcK_0kcbzIrH4pQo3Y; whl=-1%260%260%261557198130732'
        cookies = {}
        for line in coo.split(';'):  # 浏览器伪装
            name, value = line.strip().split('=', 1)
            cookies[name] = value
        r = requests.get(url, cookies=cookies, headers=headers, timeout=30)
        r.raise_for_status()
        r.encoding = r.apparent_encoding
        return r.text
   except:
        return ''


# 步骤2：对于每个页面，提取商品名称和价格信息
def parse_page(ilt, html):
    try:
        plt = re.findall(r'\"view_price\"\:\"[\d\.]*\"', html)  # findall搜索全部字符串，viex_price是源代码中表价格的值，后面的字符串为数字和点组成的字符串
        tlt = re.findall(r'\"raw_title\"\:\".*?\"', html)  # 找到该字符串和后面符合正则表达式的字符串
        pit = re.findall(r'\"pic_url\"\:\<img.*?data-original="(.*?)""', html)
        for i in range(len(plt)):
            price = eval(plt[i].split(':')[1])  # re.split() 将一个字符串按照正则表达式匹配结果进行分割，返回列表类型
            title = eval(tlt[i].split(':')[1])  # 将re获得的字符串以：为界限分为两个字符串,并取第二个字符串
            picture = eval(tlt[i].split(':')[1])
            ilt.append([price, title,picture])
    except:
        print('')


# 步骤3：将信息输出到屏幕上
def print_goods_list(ilt):
    tplt = "{:4}\t{:8}\t{:16}"  # 长度为多少
    print(tplt.format('序号', '价格', '名称','图片链接'))
    count = 0
    for g in ilt:
        count = count + 1
        print(tplt.format(count, g[0], g[1]))


def main():
    goods = '电脑'
    depth = 3  # 要爬取几页
    start_url = 'https://s.taobao.com/search?q=' + goods
    info_list = []
    for i in range(depth):
        try:
            url = start_url + '&s=' + str(44*i)  # 44是淘宝每个页面呈现的宝贝数量
            html = get_html_text(url)
            parse_page(info_list, html)
        except:
            continue
    print_goods_list(info_list)


main()
