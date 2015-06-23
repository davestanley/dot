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

# Set history size
HISTSIZE=50000
HISTFILESIZE=50000

