# coding=utf-8
__Author__ = "susmote"

import requests

url = "http://www.susmote.com"
resp = requests.get(url)

with open("home.html", 'w', encoding='utf8') as f:
    f.write(resp.text)