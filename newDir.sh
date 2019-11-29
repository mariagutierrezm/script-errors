#!/bin/bash

for eachfile in $( find ~/files -type f | grep "123")
do
	newDirectories=$( head -1 $eachfile | tr "." "--")
	#this will replace the symbols on the first line of the file 

	mkdir -p $newDirectories #create new directorie with the first variable
	mv $eachfile $newDirectories

done
