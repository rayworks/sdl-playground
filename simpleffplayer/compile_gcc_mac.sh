#! /bin/sh
gcc -o player simpleffplayer.c -lavformat -lavcodec -lsdl2 -lswscale -lz \
  $(pkg-config --cflags --libs libavformat libavcodec)
