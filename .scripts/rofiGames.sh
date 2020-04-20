#!/bin/bash
# Create a list that brings the games in the folder "links"

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

list=""

for f in $parent_path/gamelist/*; do
	aux=$(cat "$f" | awk '$1 ~ /^ *Name=/' | cut -c 6-)	

	if [ "$list"  == "" ];then
		list=$(echo "$aux")
	else
		list=$(printf "$list\n$aux")
	fi

done

echo $1

name=$(echo "$list" | dmenu -class 'blurdmenu' -p "Games" -i -b  -nf $1 -sf $2 -nb $3 -sb $4 )
notify-send "$name" "Initialized" -i 0
exec $(cat "$parent_path/gamelist/$name.desktop" | awk '$1 ~/^ *Exec=/' | cut -c 6-) 
