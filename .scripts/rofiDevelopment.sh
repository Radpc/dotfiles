#!/bin/bash
# Create a list that brings the games in the folder "links"

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

list=""

for f in $parent_path/developlist/*; do
	aux=$(cat "$f" | awk '$1 ~ /^ *Name=/' | cut -c 6-)	

	if [ "$list"  == "" ];then
		list=$(echo "$aux")
	else
		list=$(printf "$list\n$aux")
	fi

done

name=$(echo "$list" | dmenu -class 'blurdmenu' -p "Development" -i -b  -nf $1 -sf $2 -nb $3 -sb $4 )
notify-send "$name" "Initialized" -i code
exec $(cat "$parent_path/developlist/$name.desktop" | awk '$1 ~/^ *Exec=/' | cut -c 6-) 
