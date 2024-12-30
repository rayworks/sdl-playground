#! /bin/sh
gcc -o player \
  $(pkg-config --cflags --libs libavformat libavcodec libswresample libswscale libavutil sdl2) \
  simpleffplayer.c -lz
