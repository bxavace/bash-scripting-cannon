#!/bin/bash

FILE=$@

for f in $FILE
do
	echo "file: $f"
if [ -e $f ]
then
	if [ -f $f ]
	then
		echo "$f is a file."
	elif [ -d $FILE ]
	then
		echo "$f is a directory."
	fi
	echo "files:" $(ls -lah $f)
else
	echo "Filename does not exist."
fi
done
