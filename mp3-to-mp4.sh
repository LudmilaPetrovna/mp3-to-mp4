#!/bin/bash

ffmpeg -i in.mp3 -f s16le -ac 2 -ar 44100 - | ffmpeg -f rawvideo -s 2x980 -pix_fmt yuv420p -r 60 -i - -i in.mp3 -vcodec libx264 -acodec copy -aspect 2.35 -y out.mp4
