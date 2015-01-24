#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
from distutils.core import setup
from Cython.Build import cythonize


__author__ = "www.kentaro.wada@gmail.com <Kentaro Wada>"


setup(
    name='Variables app',
    ext_modules=cythonize('variables.pyx'),
)
