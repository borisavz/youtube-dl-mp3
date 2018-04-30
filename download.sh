#!/bin/bash
num=1
link="$(sed $num'!d' links)"
while [ "$link" != "" ];
do	
	youtube-dl --extract-audio --audio-format mp3 $link
	num=$((num+1))
	link="$(sed $num'!d' links)"	
done
