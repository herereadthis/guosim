#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No directory path supplied"
    exit 1
fi

for file in "$1"/*.flac
do
    ffmpeg -i "$file" -ab 320k -map_metadata 0 -id3v2_version 3 "${file%.flac}.mp3"
done