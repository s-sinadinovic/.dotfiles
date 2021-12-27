#!/usr/bin/env bash

languages=$(echo "vim zsh bash js typescript rust" | tr " " "\n")
core_utils=$(echo "git find xargs sed awk" | tr " " "\n")
selected=$(echo -e "$languages\n$core_utils" | fzf)

read -p "search: " query

if echo "$languages" | grep -qs $selected; then
    tmux split-window -l 80 -h bash -c "curl cht.sh/$selected/$(echo "$query" | tr " " "+") | less"
else
    tmux split-window -l 80 -h bash -c "curl cht.sh/$selected~$query | less"
fi
