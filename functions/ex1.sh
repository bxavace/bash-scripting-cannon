#!/bin/bash

function file_count () {
	local num=$(ls | wc -w)
	echo "Total number of files in the present directory is ${num}."
}

file_count
