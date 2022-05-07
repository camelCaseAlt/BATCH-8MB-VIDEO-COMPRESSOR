@echo off
title CMD

set /p video= Input file: 

ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 %video%
pause