# coding=utf-8
__Author__ = "susmote"

from bs4 import BeautifulSoup
n = 0
with open("Bs4_test.html", 'r', encoding='utf8') as f:
    bs = BeautifulSoup(f.read(), "lxml")
    header_list = bs.find_all('header', attrs={'class': 'post-header'})
    for header in header_list:
        n = int(n)
        n += 1
        if header.text != "":
            print(str(n) + ":  " + header.text.strip() + "\n")