#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo $INPUT_WHO_TO_GREET
echo $INPUT_WP_DB_USER
echo ::set-output name=time::$time

