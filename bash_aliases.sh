#!/bin/bash

alias emacs-w="/usr/bin/emacs"
alias emacs="emacs -nw"
alias src="source ~/.bashrc &> /dev/null; source ~/.bash_profile &> /dev/null"
alias lt="ls -lt | head"
alias untar="~/src/dot/untar.sh"
alias ls="ls -GFh"
alias dot="cd ~/src/dot/"

alias textedit=/Applications/TextEdit.app/Contents/MacOS/TextEdit

#sshfs
#need to make this more cross-computer friendly
#alias sshfs_neuro="sshfs -o follow_symlinks kellyb@macfuse.neuro.berkeley.edu: /home/httf/HWNI/"

# OS specific aliases
OS=`uname -a`

# Linux aliases
if [[ $OS == Linux* ]] ; then
    #pipe to for clipboard
    alias clip="xclip -sel clip"
fi

# Mac aliases
if [[ $OS == Darwin* ]] ; then
    #pipe to for clipboard
    alias clip="pbcopy"
fi

# Machine specific aliases follow
#alias sshfs_HWNI="/usr/local/sshfs/sshfs-static-leopard -o follow_symlinks kellyb@macfuse.neuro.berkeley.edu: ~/Desktop/HWNI"

# On golgi
if [ `hostname` = "golgi" ]; then
   alias matlab=/usr/local/MATLAB/R2011b/bin/matlab
fi