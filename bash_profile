#
# default .bash_profile
# 03/31/13

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

if [ -x /usr/local/bin/msgs ]; then
   /usr/local/bin/msgs -f
fi

# added by Anaconda 1.8.0 installer
export PATH="/Users/davestanley/anaconda/bin:$PATH"

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



export PATH=/Users/davestanley/Apps/genesis-2.3/genesis:$PATH


