#!/bin/bash

shopt -s nullglob
for FILE in *.jpg
do
	mv $FILE "$(date +%Y%m%d)$FILE"
done
