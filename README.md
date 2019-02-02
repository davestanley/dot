dot
===

dot files and other fancy things in my home folder.


setup
===
- Fork this repo
- backup your original .dot files
- run `setup.sh` - this will re-generate dot files based on this repo
- copy back into the new .dot files any content you wish to keep from your backups

details
===
The command `setup.sh` will place symbolic links in your home folder to all of the dot files here (without overwriting). So the "proper" setup is to first delete (and back up) your original folder dot files, run `setup.sh`, and then copy back in any content you want to keep from your backups. This could SERIOUSLY mess up your install if you're not careful. So if you want to play it safe, you could just look at individual files and copy the things you want.

branches
========

Warning: I am totes rebasing all the non-master branches to master and force pushing all the times. Sorry, revision-history gods.
