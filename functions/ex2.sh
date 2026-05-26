#!/bin/bash

function file_count () {
	dir=$1
	local num=$(ls $dir | wc -w)
	echo "${dir}: $num"
}

file_count $1
