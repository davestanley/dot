#add django-admin.py to the path
PATH=$PATH\:/usr/lib/python2.7/dist-packages/django/bin/
export path

# iterate over bashrc script files
for script in bashrc_*.sh
do
# check if the script is executable
if [ -x "${script}" ]; then
# run the script
source ${script}
fi
done