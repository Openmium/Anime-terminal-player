wget --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3" --referer  https://jkanime.net/ -p https://jkanime.net/$1/$2/

cd jkanime.net

var=$(ls | grep um. | head -1)

video=$(cat $var | grep m3u8 | tail -2 | head -1 | cut -d "'" -f 2)

mpv --fs $video

cd ..

rm -r jkanime.net
