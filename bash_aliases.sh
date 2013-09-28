alias emacs-w="/usr/bin/emacs"
alias emacs="emacs -nw"
alias src="source ~/.bashrc &> /dev/null; source ~/.bash_profile &> /dev/null"

#ssh
alias sshfs_61="sshfs kelly@knight61osx.dyn.berkeley.edu: /home/httf/knight61osx/"
alias ssh_neuro="ssh kellyb@ssh.neuro.berkeley.edu"
alias ssh_61="ssh kelly@knight61osx.dyn.berkeley.edu"
alias ssh_knightlab="ssh kellybuchanan@knightlab.berkeley.edu"

#sshfs
alias sshfs_neuro="sshfs -o follow_symlinks kellyb@macfuse.neuro.berkeley.edu: /home/httf/HWNI/"

#linux aliases
alias clip="xclip -sel clip"

#mac aliases

#machine specific aliases follow

#golgi
if [ `hostname` = "golgi" ]; then
   alias matlab=/usr/local/MATLAB/R2011b/bin/matlab
fi