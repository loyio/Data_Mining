# coding=utf-8
__Author__ = "susmote"

from multi_threading import mining_func
import multiprocessing
import time


def multiple_process_test():
    start_time = time.time()
    page_range_list = [
        (1, 10),
        (11, 20),
        (21, 32),
    ]
    pool = multiprocessing.Pool(processes=3)
    for page_range in page_range_list:
        pool.apply_async(mining_func.get_urls_in_pages, (page_range[0], page_range[1]))

    pool.close()
    pool.join()
    end_time = time.time()
    print("抓取时间：", end_time - start_time)
    return end_time - start_time