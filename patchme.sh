#!/bin/bash 
## simple script to add the patched miRDeep2 files to the beginning of your PATH variable
CWD=$(pwd -LP)

echo export PATH=$CWD:\$PATH >> ~/.bash_profile

chmod u+x *.pl

if [[ -f "$CWD/miRDeep2_patch.pl" ]];then
	
	present=$(miRDeep2.pl 2>&1 |grep change)
        if [[ -z $present ]];then
                echo miRDeep2 seems not to be in your global PATH variable
                echo please use the install.pl script first or add it manually to your PATH variable before applying the patch
                exit
        fi

	a=$(which miRDeep2.pl)
	mv $a $a.orig
	ln -s $CWD/miRDeep2_patch.pl $a
	echo File $a has been moved to $a.orig and the current $CWD/miRDeep2_patch.pl has been linked to $a
fi
