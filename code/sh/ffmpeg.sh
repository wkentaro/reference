#!/usr/bin/env sh

echo """
$ # mp4 -> mp3
$ ffmpeg -i audio.mp4 audio.mp3
"""

echo """
$ # mp3 -> wav
$ ffmpeg -i tam-n11.mp3 -ar 8000 -ac 1 tam-n11.wav
"""
