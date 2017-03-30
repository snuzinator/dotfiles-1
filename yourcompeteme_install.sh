#!/usr/bin/env bash

sudo apt update

sudo apt install build-essential cmake nodejs npm tmux -y
sudo apt install python-dev python3-dev -y

###############
cd ~/.vim/plugged/YouCompleteMe
./install.py --tern-completer

