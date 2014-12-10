#!/usr/bin/env bash

PID=$(pidof java)

if [ -z "$PID" ]; then
  tmux new-session -d -s prod -n 0 "{{ prod_dir }}/start.sh"
  echo 'Server started in "prod" tmux session'
else
  tmux attach-session -d -t prod
fi
