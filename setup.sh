#!/bin/bash

#git repo path
dir=~/src/dot

#softlink dotfiles
files="bashrc bash_aliases.sh"
for file in $files; do
    ln -s $dir/$file ~/.$file
done

# executing this script does not re-source bashrc properly, but running this one line manually in CL does.
source ~/.bashrc

