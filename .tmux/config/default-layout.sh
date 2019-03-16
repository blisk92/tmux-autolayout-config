#! /bin/bash

tmux split-window -h -p 20 -t 0 "htop"
tmux split-window -v -t 1 "sudo su"
tmux split-window -v -t 2
tmux split-window -v -p 25 -t 0 "lnav /var/log/apache2/error.log"
tmux select-pane -t 0
tmux send-keys -t 0 "powerline-daemon -q" enter
tmux send-keys -t 0 "powerline-config tmux setup" enter
tmux send-keys -t 0 "clear" enter
