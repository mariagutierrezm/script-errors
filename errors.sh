#!/bin/bash

for eachfile in $( find ~/files -type f | grep "lol" )
do
        if fileshave=$( head -1 $eachfile | grep "kok" )
        then
                changeTime=$( echo $eachfile | tr "/" "-" | cut -d"-" -f3-4 > temp )
                newTime=$( tail -2 $eachfile >> temp )
                newFiles=$( $newTime > $eachfile )
        fi
done

#script to change the name of files, first identify the files to change, then you change name of the files
#and store them in a temp file, then you move the files that are changed into the original file and 
#your files have been changed as they are replaced by the new ones
