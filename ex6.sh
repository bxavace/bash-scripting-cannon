#!/bin/bash

FILE=""
read -p "filename: " FILE
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
