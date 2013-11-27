#!/bin/bash

#git repo path
dir=~/src/dot

#softlink dotfiles
files="bashrc bash_aliases.sh"
for file in $files; do
    ln -s $dir/$file ~/.$file 2> /dev/null
done

#softlink git ignore
#this is not working in golgi git
mkdir ~/.config 2> /dev/null
mkdir ~/.config/git 2> /dev/null
ln -s $dir/gitignore_global ~/.config/git/ignore 2> /dev/null

# executing this script does not re-source bashrc properly, but running this one line manually in CL does.
source ~/.bashrc

