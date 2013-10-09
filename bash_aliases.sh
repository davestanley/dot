alias emacs-w="/usr/bin/emacs"
alias emacs="emacs -nw"
alias src="source ~/.bashrc &> /dev/null; source ~/.bash_profile &> /dev/null"
alias lt="ls -lt | head"
#ssh
alias ssh_neuro="ssh kellyb@ssh.neuro.berkeley.edu"

#sshfs
#need to make this more cross-computer friendly
#alias sshfs_neuro="sshfs -o follow_symlinks kellyb@macfuse.neuro.berkeley.edu: /home/httf/HWNI/"

#linux aliases
#pipe to for clipboard
alias clip="xclip -sel clip"

#mac aliases

#machine specific aliases follow

#golgi
if [ `hostname` = "golgi" ]; then
   alias matlab=/usr/local/MATLAB/R2011b/bin/matlab
fi