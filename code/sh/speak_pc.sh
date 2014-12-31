#!/usr/bin/env sh
# speak_pc.sh

echo """
$ wget -q -U Mozilla -O audio.mp3 'http://translate.google.com/translate_tts?ie=UTF-8&tl=ja&q=こんにちは'
$ mpg123 -q audio.mp3
$ rm -f audio.mp3
"""