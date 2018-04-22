# coding=utf-8
__Author__ = "susmote"

import requests
import json

url = "https://ditu.amap.com/service/poiInfo?id=B001B0IZY1&query_type=IDQ"

resp = requests.get(url)

json_dict = json.loads(resp.text)

data_dict = json_dict['data']

data_list = data_dict['poi_list']

dis_data = data_list[0]

print('城市： ', dis_data['cityname'])
print('名称： ', dis_data['name'])
print('电话： ', dis_data['tel'])
print('区号： ', dis_data['areacode'])
print('地址： ', dis_data['address'])
print('经度： ', dis_data['longitude'])
print('纬度： ', dis_data['latitude'])



