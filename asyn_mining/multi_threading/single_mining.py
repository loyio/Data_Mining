# coding=utf-8
__Author__ = "susmote"

import time
from mining_func import get_urls_in_pages


def single_test():
    start_time = time.time()
    get_urls_in_pages(1, 32)
    end_time = time.time()
    print("共使用时间 : ", end_time - start_time)
    return end_time - start_time