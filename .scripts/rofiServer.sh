#!/bin/bash
# Create a list that brings the servers in '/config/sv'

child_path='/config/sv/'
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
extension='.sv'

list=""

for f in $parent_path$child_path*; do
	aux=$(basename -- "$f" | cut -f 1 -d '.')	
	if [ "$list"  == "" ];then
		list=$(echo "$aux")
	else
		list=$(printf "$list\n$aux")
	fi

done

name=$(echo "$list" | dmenu -class 'blurdmenu' -p "Serve" -i -b  -nf $1 -sf $2 -nb $3 -sb $4 )
notify-send "$name" "Initialized" -i server

final="$parent_path$child_path$name$extension"
"${final}"
