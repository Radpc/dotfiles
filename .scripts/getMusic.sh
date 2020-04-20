notify-send "Download started..." -i 0
echo \"$(xclip -o)\" | xargs youtube-dl --extract-audio --audio-format mp3 --output "/home/radpc/Music/Special/%(uploader)s-%(title)s.%(ext)s"

if [ $? -eq 0  ]
then
	notify-send "Song downloaded!" "See in music/special" -i music
else
	notify-send "Failed" "Did you select a youtube URL?" -i error
fi

