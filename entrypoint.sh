#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo $INPUT_WHO_TO_GREET
echo $INPUT_WP_DB_USER
echo ::set-output name=time::$time

newstr=$(echo $INPUT_WHO_TO_GREET | sed 's/[[]]//g' ) # remove ( and )

IFS=', ' read -r -a myarray <<< "$newstr"
for index in "${!myarray[@]}"
do
    # echo "$index ${myarray[index]}"  #  shows index and value
      echo        "${myarray[index]}"  #  shows           value
done

