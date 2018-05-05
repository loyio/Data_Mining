# -*- coding: utf-8 -*-
"""
Created on 2018/5/5 

@author: susmote
"""

import gevent
from gevent import monkey
monkey.patch_all()
import time
import mining_func


def gevent_test():
    start_time = time.time()
    page_range_list = [
        (1, 10),
        (11, 20),
        (21, 32),
    ]
    jobs = []
    for page_range in page_range_list:
        jobs.append(gevent.spawn(mining_func.get_urls_in_pages, page_range[0], page_range[1]))

    gevent.joinall(jobs)

    end_time = time.time()
    print("抓取时间：", end_time - start_time)
    return end_time - start_time
