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

