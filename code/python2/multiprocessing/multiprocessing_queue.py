#!/usr/bin/env python
# -*- coding: utf-8 -*-
# multiprocessing_queue.py
# author: Kentaro Wada <www.kentaro.wada@gmail.com>

import multiprocessing

class MyFancyClass(object):
    def __init__(self, name):
        self.name = name

    def do_something(self):
        proc_name = multiprocessing.current_process().name
        print 'Doing something fancy in %s for %s!' % (proc_name, self.name)


def worker(q):
    obj = q.get()
    obj.do_something()


if __name__ == '__main__':
    queue = multiprocessing.Queue()

    p = multiprocessing.Process(target=worker, args=(queue,))
    p.start()

    queue.put(MyFancyClass('Fancy Dan'))

    # ワーカーが終了するまで待つ
    queue.close()
    queue.join_thread()
    p.join()