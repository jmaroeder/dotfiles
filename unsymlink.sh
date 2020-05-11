#!/usr/bin/env bash
set -ex

script=`realpath $0`
scriptpath=`dirname $script`
basepath=`realpath $scriptpath`

echo ""


echo "Symlinking dotfiles..."
for suffix in common "${os_type}"; do
    SAVEIFS=$IFS
    IFS=$(echo -en "\n\b")

    for dotfile in `find $basepath/home-${suffix}`; do
        relpath=`echo "$dotfile" | sed "s!$basepath/home-${suffix}!!"`
        if [ -d $dotfile ]; then
            target_dir="$HOME$relpath"
            if [ ! -d $target_dir ]; then
                echo "mkdir -p $target_dir"
                mkdir -p $target_dir
            fi
        elif [ -f "$dotfile" ]; then
            ln -sfv "$dotfile" $HOME$relpath
        fi
    done

    IFS=$SAVEIFS
done
