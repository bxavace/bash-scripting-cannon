#!/bin/bash

FILEDIR=$1

if [ -f $FILEDIR ];
then
	echo "File is a FILE type."
	exit 0
elif [ -d $FILEDIR ];
then
	echo "File is a DIRECTORY type."
	exit 1
else
	echo "File is some other type of file."
	exit 2
fi
