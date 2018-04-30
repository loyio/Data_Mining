# coding=utf-8
__Author__ = "susmote"

import time
import threading
from mining_func import get_urls_in_pages


def multiple_threads_test():
    start_time = time.time()
    page_range_list = [
        (1, 10),
        (11, 20),
        (21, 32),
    ]

    th_list = []
    for page_range in page_range_list:
        th = threading.Thread(target=get_urls_in_pages, args=(page_range[0], page_range[1]))
        th_list.append(th)

    for th in th_list:
        th.start()

    for th in th_list:
        th.join()

    end_time = time.time()
    print("共使用时间1:", end_time - start_time)
    return end_time - start_time