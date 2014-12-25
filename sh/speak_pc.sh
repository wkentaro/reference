#!/usr/bin/env sh
# speak_pc.sh

wget -q -U Mozilla -O audio.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=hello+world"
# or
# curl -A "Mozilla" "http://translate.google.com/translate_tts?tl=en&q=hello+world" > audio.mp3
mpg123 -q audio.mp3
rm -f audio.mp3


wget -q -U Mozilla -O audio.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=ja&q=こんにちは"
mpg123 -q audio.mp3
rm -f audio.mp3