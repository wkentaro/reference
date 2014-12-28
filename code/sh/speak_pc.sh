#!/usr/bin/env sh
# speak_pc.sh

# English
wget -q -U Mozilla -O audio.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=I+love+you."
# or
# curl -A "Mozilla" "http://translate.google.com/translate_tts?tl=en&q=hello+world" > audio.mp3
mpg123 -q audio.mp3
rm -f audio.mp3

# Japanese
wget -q -U Mozilla -O audio.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=ja&q=愛しています。"
mpg123 -q audio.mp3
rm -f audio.mp3


# Chinese
wget -q -U Mozilla -O audio.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=zh&q=我爱你。"
mpg123 -q audio.mp3
rm -f audio.mp3