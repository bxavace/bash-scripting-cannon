#!/bin/bash

FILE=$1

if [ -e $FILE ]
then
	if [ -f $FILE ]
	then
		echo "$FILE is a file."
	elif [ -d $FILE ]
	then
		echo "$FILE is a directory."
	fi
	echo "files:" $(ls -lah $FILE)
else
	echo "Filename does not exist."
fi
