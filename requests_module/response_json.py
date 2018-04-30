# coding=utf-8
__Author__ = "susmote"

import requests

url = "http://jsonip.com/"
resp_ip = requests.get(url)

print("字符串格式")
print(resp_ip.text)
print(type(resp_ip))

print("字典格式")
print(resp_ip.json())
print(type(resp_ip))

print(resp_ip.text)