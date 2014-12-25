#!/usr/bin/env python
# -*- coding: utf-8 -*-
# plot_wave_file.py
# author: Kentaro Wada <www.kentaro.wada@gmail.com>

import wave
import numpy as np
import matplotlib.pyplot as plt

from output_wave_file import (
    print_wave_info,
    output_wave_file,
    )


def plot_wave_file(wf):
    buf = wf.readframes(wf.getnframes())
    print(len(buf))
    # buf is binary & get together to make int with 2 bytes
    data = np.frombuffer(buf, dtype='int16')
    # plot
    plt.plot(data)
    plt.show()


def main():
    # load
    filename = 'Front_Center.wav'
    wf = wave.open(filename, 'r')
    # plot wave
    plot_wave_file(wf=wf)
    # close
    wf.close()


if __name__ == '__main__':
    main()
