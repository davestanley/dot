
#!/bin/bash -l

# Load module
module load matlab/2017a

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


# Jason's simulator
export PATH=$PATH:$HOME/src/dsim/csh

# Compiled Matlab: Library path for running
# insert the following to your .bashrc file
# source .bashrc to make the additions effective for current session
# points to system default version of matlab
#MCRROOT=/usr/local/matlab
#LD_LIBRARY_PATH=${MCRROOT}/runtime/glnxa64 ;
#LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/bin/glnxa64 ;
#LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRROOT}/sys/os/glnxa64;
#MCRJRE=${MCRROOT}/sys/java/jre/glnxa64/jre/lib/amd64 ;
#LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/native_threads ;
#LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/server ;
#LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE}/client ;
#LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${MCRJRE} ;
#XAPPLRESDIR=${MCRROOT}/X11/app-defaults ;
#export LD_LIBRARY_PATH;
#export XAPPLRESDIR;

MCR_CACHE_ROOT=~/.mcrCache8.1
export MCR_CACHE_ROOT


# For neuron
export PYTHONHOME=/usr/

# # Load BU SCC Modules
# Stuff for making git compatible with submodules
module load git/2.6.3
module load libcurl

# Stuff for running Octave
module use /share/module/centos7
module load octave/4.2.1

