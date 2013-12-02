#!/bin/bash

#Exports, should probably pop these into bash_exports sometime or something
#add django-admin.py to the path
PATH=$PATH\:/usr/lib/python2.7/dist-packages/django/bin
export path
#in case I use svn again
export SVN_EDITOR=emacs

echo "Bash files:"
ls -al | grep bash
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

# colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# adjust process limits
# so far does not seem necessary
# see: http://blog.ghostinthemachines.com/2010/01/19/mac-os-x-fork-resource-temporarily-unavailable/
# if [ `uname -n` = "cnd02510xg.vhl.dom" ]; then echo "true"; fi
