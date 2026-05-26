#!/bin/bash

read -p "file extension: " EXT
echo $EXT

read -p "prefix: " PREF
if [ -z "$PREF" ]; 
then
	ISEMPTY=1
	PREF=$(date +%Y%m%d)
fi

shopt -s nullglob
for FILE in *.$EXT;
do
	if [ $ISEMPTY -e 1 ]; then
		new="$PREF$FILE"
	else
		new="$PREF-$FILE"
	fi
	echo "Renaming $FILE to $new"
	mv $FILE $new
done
