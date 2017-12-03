#!/bin/bash
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


# added by Anaconda2 5.0.1 installer
export PATH="/Users/davestanley/anaconda2/bin:$PATH"


# Added by Canopy installer on 2016-12-11
# VIRTUAL_ENV_DISABLE_PROMPT can be set to '' to make the bash prompt show that Canopy is active, otherwise 1
alias activate_canopy="source '/Users/davestanley/Library/Enthought/Canopy_64bit/User/bin/activate'"
# VIRTUAL_ENV_DISABLE_PROMPT=1 source '/Users/davestanley/Library/Enthought/Canopy_64bit/User/bin/activate'

