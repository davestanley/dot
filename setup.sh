#!/bin/bash

#git repo path
dir=~/src/dot

#softlink dotfiles
files="bashrc bash_aliases"
for file in $files; do
    ln -s $dir/$file ~/.$file
done

source ~/.bashrc

