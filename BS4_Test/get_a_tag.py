# coding=utf-8
__Author__ = "susmote"

from bs4 import BeautifulSoup
with open("Bs4_test.html", 'r', encoding='utf8') as f:
    bs = BeautifulSoup(f.read(), "lxml")
    a_list = bs.find_all('a')
    for a in a_list:
        if a.text != "" and 'tag' in a["href"]:
            print(a.text.strip(), a["href"])