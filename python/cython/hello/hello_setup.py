#!/usr/bin/env python
# -*- coding: utf-8 -*-
# hello_setup.py
# author: Kentaro Wada <www.kentaro.wada@gmail.com>

from distutils.core import setup
from Cython.Build import cythonize

setup(
    name='Hello world app',
    ext_modules=cythonize('hello.pyx'),
)