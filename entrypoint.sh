#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo %INPUT_WHO-TO-GREET%
echo ::set-output name=time::$time
echo $SLACK_WEBHOOK_URL
echo $DYNAMIC_VAR
