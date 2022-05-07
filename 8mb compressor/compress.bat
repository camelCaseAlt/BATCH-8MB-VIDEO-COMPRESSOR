@echo off
title COMPRESS A VIDEO BELOW 8MB 
echo NOTE: the bigger the video the shittier the quality
set /p vid=Copy video location or drag your video here: 
set /p bitrate=Paste the bitrate you just calculated here: 
set /p name=The name of your Compressed video including the file type (.mp4 etc.) here: 

echo Compressing video... this might take a while.

ffmpeg -y -hide_banner -loglevel error -i %vid% -b %bitrate%k %name%

echo done!
pause exit
