#!/bin/bash

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
GREEN="\[\033[01;32m\]"
BLUE="\[\033[01;34m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
NONE="\[\033[0m\]"

# prompt components
ps1_user="$BLUE\u$NONE"
ps1_host="$GREEN\h$NONE"
ps1_dir="$YELLOW\w$NONE"

# git prompt components
function parse_git_branch {
  git branch 2>/dev/null | grep '^*' | colrm 1 2 | sed 's_\(.*\)_(\1)_'
}

function git_dirty {
  git diff --quiet HEAD &>/dev/null
  [ $? == 1 ] && echo "!"
}

# git colors
ps1_git="$LIGHT_GRAY\$(parse_git_branch)$RED\$(git_dirty)$NONE"


# actually construct prompt
# reders as: user@host:dir (branch)! $
export PS1="${ps1_user}@${ps1_host}:${ps1_dir}${ps1_git} \$ "

# adjust process limits
# so far does not seem necessary
# see: http://blog.ghostinthemachines.com/2010/01/19/mac-os-x-fork-resource-temporarily-unavailable/
# if [ `uname -n` = "cnd02510xg.vhl.dom" ]; then echo "true"; fi
