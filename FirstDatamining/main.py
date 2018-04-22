# coding=utf-8
__Author__ = "susmote"

import requests

urls_dict = {
    '特克斯博客': 'http://www.susmote.com/',
    '百度': 'http://www.baidu.com',
    'xyz': 'www.susmote.com',
    '特克斯博客歌单区1': 'https://www.susmote.com/?cate=13',
    '特克斯博客歌单区2': 'https://www.susmote.com/?cate=13'
}

urls_lst = [
    ('特克斯博客', 'http://www.susmote.com/'),
    ('百度', 'http://www.baidu.com'),
    ('xyz', 'www.susmote.com'),
    ('特克斯博客歌单区1', 'https://www.susmote.com/?cate=13'),
    ('特克斯博客歌单区2', 'https://www.susmote.com/?cate=13')
]

# 利用字典抓取
crawled_urls_for_dict = set()
for ind, name in enumerate(urls_dict.keys()):
    name_url = urls_dict[name]
    if name_url in crawled_urls_for_dict:
        print(ind, name, "已经抓取过了.")
    else:
        try:
            resp = requests.get(name_url)
        except Exception as e:
            print(ind, name, ":", str(e)[0:50])
            continue
        resp.encoding = "utf8"
        content = resp.text
        crawled_urls_for_dict.add(name_url)
        with open("bydict_" + name + ".html", 'w', encoding='utf8') as f:
            f.write(content)
            print("抓取完成 : {} {}, 内容长度为{}".format(ind, name, len(content)))


for u in crawled_urls_for_dict:
    print(u)

print('-'*60)


# 利用列表抓取
crawled_urls_for_list = set()
for ind, tup in enumerate(urls_lst):
    name = tup[0]
    name_url = tup[1]
    if name_url in crawled_urls_for_list:
        print(ind, name, "已经抓取过了.")
    else:
        try:
            resp = requests.get(name_url)
        except Exception as e:
            print(ind, name, ":", str(e)[0:50])
            continue
        resp.encoding = "utf8"
        content = resp.text
        crawled_urls_for_list.add(name_url)
        with open('bylist_' + name + ".html", "w", encoding='utf8') as f:
            f.write(content)
            print("抓取完成:{} {}, 内容长度为{}".format(ind, name, len(content)))


for u in crawled_urls_for_list:
    print(u)