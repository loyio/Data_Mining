# coding=utf-8
__Author__ = "susmote"

import requests

urls = "http://www.susmote.com"

resp = requests.get(urls)
resp.encoding = "utf8"
content = resp.text

with open("Bs4_test.html", 'w', encoding="utf8") as f:
    f.write(content)
