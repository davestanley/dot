#!/bin/bash

# git repo path
dir=~/src/dot

# softlink dotfiles
files="bashrc bash_aliases.sh gitconfig"
for file in $files; do
    ln -s $dir/$file ~/.$file 2> /dev/null
done

# this does not seem necessary. For now, a path (~/src...) in ~/.gitconfig to the versioned gitignore_global file seems to work. On golgi.
# softlink git ignore
#mkdir ~/.config 2> /dev/null
#mkdir ~/.config/git 2> /dev/null
#ln -s $dir/gitignore_global ~/.config/git/ignore 2> /dev/null


# re-source bashrc
. ~/.bashrc

