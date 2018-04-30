# coding=utf-8
__Author__ = "susmote"


import requests
from bs4 import BeautifulSoup


def format_str(s):
    return s.replace("\n", "").replace(" ", "").replace("\t", "")


def get_urls_in_pages(from_page_num, to_page_num):
    urls = []
    search_word = "python"
    url_part_1 = "http://search.dangdang.com/?key="
    url_part_2 = "&act=input"
    url_part_3 = "&page_index="
    for i in range(from_page_num, to_page_num + 1):
        urls.append(url_part_1 + search_word + url_part_2 + url_part_3 + str(i))
    all_href_list = []
    for url in urls:
        print(url)
        resp = requests.get(url)
        bs = BeautifulSoup(resp.text, "lxml")
        a_list = bs.find_all('a')
        needed_list = []
        for a in a_list:
            if 'name' in a.attrs:
                name_val = a['name']
                href_val = a['href']
                title = a.text
                if 'itemlist-title' in name_val and title != "":
                    if [title, href_val] not in needed_list:
                        needed_list.append([format_str(title), format_str(href_val)])
        all_href_list += needed_list
    all_href_file = open(str(from_page_num) + '_' + str(to_page_num) + '_' + 'all_hrefs.txt', 'w')
    for href in all_href_list:
        all_href_file.write('\t'.join(href) + '\n')
    all_href_file.close()
    print(from_page_num, to_page_num, len(all_href_list))


