#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo $INPUT_WHO_TO_GREET
echo $INPUT_wp_db_name
echo ::set-output name=time::$time

