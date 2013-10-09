#add django-admin.py to the path
PATH=$PATH\:/usr/lib/python2.7/dist-packages/django/bin/
export path

# iterate over bashrc script files
pwd
ls -l
echo "list is:"
for script in .bash_*.sh
do
# check if the script is executable
echo ls -l ${script}
if [ -x "${script}" ]; then
# run the script
source ${script}
fi
done