#!/bin/bash
#this is the shebang which acts as the interpreter for the script

# get the arguement in a variable
var=$1

# first of all we need to create the directory
# mkdir command
mkdir test

# change into the directory test 
cd test

# create ( touch ) the required files
# touch with -t option is used to create files with timestamp
touch -t 202103081800 foo #file name foo
touch -t 202103081801 goo # file name goo
touch -t 202103081802 hoo # file name hoo

# test for the arguement being "older"
if [ "$var" = "older" ]; 
then

	ls -lt | tail -1
fi

# find command is powerful to find files with conditions

# after weare done, we need to cleanup
# move up the drectory tree
cd ..

#remove the directory 
rm -rf test
