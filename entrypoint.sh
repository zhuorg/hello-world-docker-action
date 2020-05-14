#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
echo $SLACK_WEBHOOK_URL
echo $DYNAMIC_VAR
