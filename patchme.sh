#!/bin/bash 
## simple script to add the patched miRDeep2 files to the beginning of your PATH variable
CWD=$(pwd -LP)

echo export PATH=$CWD:\$PATH >> ~/.bash_profile

chmod u+x *.pl
