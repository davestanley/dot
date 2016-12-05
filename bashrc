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

# added by Anaconda 1.8.0 installer
export PATH="/Users/davestanley/anaconda/bin:$PATH"

# Open MPI
#export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/Cellar/open-mpi/1.8.1/lib

# # # For Custom compiled MPI and NEURON
#echo now executing ~/.profile
export PATH=$HOME/local/bin:$PATH
export LD_LIBRARY_PATH=$HOME/local/lib/
source ~/neuron/nrnenv

# For installed bin NEURON
#IDIR=/Applications/NEURON-7.3
#export IV=$IDIR/iv
#export N=$IDIR/nrn
#export CPU=x86_64
#export PATH=$IV/$CPU/bin:$N/$CPU/bin:$PATH
#export PATH=/Applications/NEURON-7.3/nrn/x86_64/bin:$PATH


# For GENESIS
export PATH=/Users/davestanley/Apps/genesis-2.3/genesis:$PATH

# Homebrew git token
export HOMEBREW_GITHUB_API_TOKEN="c015b77d47bff83e03f6c49286f0d1b48bc2f234"



# Set history size
HISTSIZE=50000
HISTFILESIZE=50000

