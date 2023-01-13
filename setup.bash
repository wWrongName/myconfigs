#!/bin/bash

S_DIR=$( dirname -- "$0"; )

if [ "$1" = "-r" ]; then
    echo Read from repository
    cp ${S_DIR}/alacritty ~/.config/ -r
    cp ${S_DIR}/nvim ~/.config/ -r
    cp ${S_DIR}/tmux/.tmux.conf ~/
    tmux source-file ~/.tmux.conf
elif [ "$1" = "-w" ]; then
    echo Write config into repository
    cp ~/.config/alacritty ${S_DIR}/ -r
    cp ~/.config/nvim ${S_DIR}/ -r
    cp ~/.tmux.conf ${S_DIR}/tmux/ 
fi

