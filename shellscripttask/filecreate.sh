#!/bin/bash

filelist=`find . -name "surya*"`

for file in $filelist
do
   echo "Renaming file from $file to ${file/surya/filename}"
   mv $file ${file/surya/filename}
done
