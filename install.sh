#!/usr/bin/env bash
set -e

mkdir -p ~/src/github.com/jmaroeder
git clone https://github.com/jmaroeder/dotfiles ~/src/github.com/jmaroeder
~/src/github.com/jmaroeder/dotfiles/symlink.sh
