#!/usr/bin/env bash

PID=$(pidof java)

if [ -z "$PID" ]; then
  tmux new-session -d -s prod -n 0 "java -Xms{{ heap_size }} -Xmx{{ heap_size }} -XX:MaxPermSize=128M -jar {{ prod_dir }}/spigot.jar";
else
  tmux attach-session -d -t prod ;
  tmux select-window -t 0 ;
fi
