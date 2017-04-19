#!/bin/bash 
## simple script to add the patched miRDeep2 files to the beginning of your PATH variable
CWD=$(pwd -LP)

echo export PATH=$CWD:\$PATH >> ~/.bash_profile

chmod u+x *.pl

if [[ -f "$CWD/miRDeep2_patch.pl" ]];then 
	a=$(which miRDeep2.pl)
	mv $a $a.orig
	ln -s $CWD/miRDeep2_patch.pl $a
	echo File $a has been moved to $a.orig and the current $CWD/miRDeep2_patch.pl has been linked to $a
fi
