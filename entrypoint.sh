#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo $INPUT_WHO_TO_GREET
echo $INPUT_WP_DB_USER
echo ::set-output name=time::$time

newstr=$(echo $INPUT_WHO_TO_GREET | sed 's/\[//g' ) # remove [ 
newstr2=$(echo $newstr | sed 's/\]//g' ) # remove ]
echo $newstr2
IFS=,             # split on ,
set -o noglob     # disable glob
set -- $newstr2 # split+glob with glob disabled.
echo "$# elements:"
printf $@
