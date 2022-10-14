#!/bin/bash

ffmpeg -i in.mp3 -f u16le -ac 2 -ar 44100 - | ffmpeg -f rawvideo -s 3x360 -pix_fmt  yuv422p16le -r 35 -i - -i in.mp3 -r 30 -s 16x360 -vcodec libx264 -ab 192000 -aspect 1.77777777 -y out.mp4
