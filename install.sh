#!/bin/bash
#run once

dir=~/src/dot
olddir=~/dotfiles_old
mkdir $olddir

files="bashrc bash_aliases emacs.d"

for file in $files; do
    mv ~/.$file $olddir
    ln -s $dir/$file ~/.$file
done

source ~/.bashrc

