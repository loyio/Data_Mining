# coding=utf-8
__Author__ = "susmote"

import requests
import json

url = "https://ditu.amap.com/service/poiInfo?id=B001B0IZY1&query_type=IDQ"

resp = requests.get(url)

json_dict = json.loads(resp.text)

print(json_dict['data'])