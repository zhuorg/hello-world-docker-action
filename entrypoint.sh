#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
cat /github/workspace/README.md
echo 'This is a test' > /github/workspace/foo.txt
