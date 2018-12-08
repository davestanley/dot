#!/bin/bash

alias emacs-w="/usr/bin/emacs"
alias emacs="emacs -nw"
alias resrc="source ~/.bashrc &> /dev/null; source ~/.bash_profile &> /dev/null"
alias lt="ls -lt | head"
alias untar="~/src/dot/untar.sh"
alias gitdir="cd ~/Dropbox/git"
alias src="cd ~/src/"
alias dot="cd ~/src/dot/"
alias bin="cd ~/src/bin/"
alias ds_kb="cd ~/src/ds_kb3/"
alias kram="cd ~/src/model-dnsim-kramer_IB"
alias krDSS="cd ~/src/model-dnsim-kramer_IB/DynaSim"
alias krMDD="cd ~/src/model-dnsim-kramer_IB/DynaSim/functions/dependencies/MDD_SM"
alias gcam="git commit -am"
alias gbra="git branch -a"
alias gdf="git diff"
	# For downloading Youtube playslists with appended track number
alias youtube-dl-pl='youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s"'

# Function for renaming terminals
function title { 
    printf "\033]0;%s\007" "${1}" 
}

#sshfs
#need to make this more cross-computer friendly
#alias sshfs_neuro="sshfs -o follow_symlinks kellyb@macfuse.neuro.berkeley.edu: /home/httf/HWNI/"

# OS specific aliases
OS=`uname -a`

# Linux aliases
if [[ $OS == Linux* ]] ; then
    #pipe to for clipboard
    alias clip="xclip -sel clip"
    alias skype_restart="killall -9 skype; skype &"
    alias ls="ls -GFh --color=auto"
    alias egrep='egrep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias grep='grep --color=auto'

fi

# Mac aliases
if [[ $OS == Darwin* ]] ; then
    #pipe to for clipboard
    alias clip="pbcopy"
    alias textedit=/Applications/TextEdit.app/Contents/MacOS/TextEdit
    alias ls="ls -GFh"
fi

# Machine specific aliases follow
#alias sshfs_HWNI="/usr/local/sshfs/sshfs-static-leopard -o follow_symlinks kellyb@macfuse.neuro.berkeley.edu: ~/Desktop/HWNI"

