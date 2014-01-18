#!/bin/bash

# git repo path
dir=~/src/dot

# softlink home folder dotfiles
files="bashrc bash_aliases.sh gitconfig emacs bash_prompt.sh"
for file in $files; do
    ln -s $dir/$file ~/.$file 2> /dev/null
done

# softlink ssh config
echo "Pre-existing files in ~/.ssh:"
ls ~/.ssh/
# if directory or file exists, we will get some messages and the link will not trample anything
# maybe someday this can graduate to some if statements
mkdir ~/.ssh 2> /dev/null
ln -s $dir/ssh_config ~/.ssh/config 2> /dev/null

# This does not seem necessary anymore. 
# For now, a path (~/src...) in ~/.gitconfig to the versioned gitignore_global file seems to work. On golgi and brick.
## softlink git ignore
#mkdir ~/.config 2> /dev/null
#mkdir ~/.config/git 2> /dev/null
#ln -s $dir/gitignore_global ~/.config/git/ignore 2> /dev/null

# re-source bashrc
. ~/.bashrc

