# coding=utf-8
__Author__ = "susmote"

import requests

post_data = {'user': 'susmote', 'passwd': '123456'}
resp_post = requests.post('http://httpbin.org/post', data=post_data)

print(resp_post.json())