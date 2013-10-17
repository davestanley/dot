#add django-admin.py to the path
PATH=$PATH\:/usr/lib/python2.7/dist-packages/django/bin/
export path

ls -al | grep bash
# iterate over bashrc script files
for script in .bash_*.sh
do
echo ${script}
# check if the script is executable
if [ -x "${script}" ]; then
# run the script
source ${script}
fi
done
# on golgi, this loads bash aliases fine

# colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

