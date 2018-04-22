# coding=utf-8
__Author__ = "susmote"

import requests
url = "https://ditu.amap.com/service/poiInfo?id=B001B0IZY1&query_type=IDQ"

resp = requests.get(url)
print(resp.text[0:200])