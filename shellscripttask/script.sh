#!/bin/bash

filelist=`find . -name "filename*"`

for file in $filelist
do
   echo "Renaming file from $file to ${file/filename/surya}"
   mv $file ${file/filename/surya}
done
