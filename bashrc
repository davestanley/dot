#!/bin/bash

# make emacs everywhere
export EDITOR=emacs
#in case I use svn again
export SVN_EDITOR=emacs

#echo "Bash files:"
#ls -al | grep bash
# iterate over bashrc script files
for script in ~/.bash_*.sh
do
  # check if the script is executable
  if [ -x "${script}" ]; then
  # run the script
    . ${script}
  else
    echo "Script ${script} is not executable."
  fi
done

# adjust process limits on mac
# this is not always necessary
# see: http://blog.ghostinthemachines.com/2010/01/19/mac-os-x-fork-resource-temporarily-unavailable/
# if [ `uname -n` = "cnd02510xg.vhl.dom" ]; then echo "true"; fi


# Setup paths
PATH=$PATH:$HOME/bin

# For GitHub and src folder
export PATH_GITHUB=$HOME/GDrive/from_Dropbox/git
export PATH_SRC=$HOME/src

# Set history size
# HISTSIZE=50000
# HISTFILESIZE=50000

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


# For neuron
export PYTHONHOME=/usr/

