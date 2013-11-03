
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
else
  echo "Script ${script} is not executable."
fi
done
# on golgi, this loads bash aliases fine