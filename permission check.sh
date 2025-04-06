#!/bin/bash

input_file=$1
input_permission=$2

real_file_permission=$(ls -l "$input_file" | awk '{print $1}')

if [ "$real_file_permission" == "$input_permission" ]
then
   echo "the permission of file : "$input_file" is correct and is "$real_file_permission""
else
   echo "the permission of file that you enter : "$input_file" is inncorrect and the real permission is "$real_file_permission""
fi
