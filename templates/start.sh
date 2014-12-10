#!/usr/bin/env bash

PID=$(pidof java)

if [ -z "$PID" ]; then
    tmux new-session -d -s prod ;
    tmux new-window -t prod -n \
      java -Xms{{ heap_size }} -Xmx{{ heap_size }} -XX:MaxPermSize=128M -jar {{ prod_dir }}/spigot.jar ;
fi
    tmux attach-session -d -t prod ;
    tmux select-window -t $1 ;
exit 0

