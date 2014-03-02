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
