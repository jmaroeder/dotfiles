#!/usr/bin/env bash
set -e

script=`realpath $0`
scriptpath=`dirname $script`
basepath=`realpath $scriptpath/..`

echo "Symlinking dotfiles..."
for dotfile in `find $basepath/home`; do
    relpath=`echo "$dotfile" | sed "s!$basepath/home!!"`
    if [ -d $dotfile ]; then
        target_dir="$HOME$relpath"
        if [ ! -d $target_dir ]; then
            echo "mkdir -p $target_dir"
            mkdir -p $target_dir
        fi
    elif [ -f "$dotfile" ]; then
        echo ln -sfv "$dotfile" $HOME
    fi
done
