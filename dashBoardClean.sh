#!/bin/bash

#Remove the spaces from dashboard files

	x=1
	while [ $x -gt 0 ]
		do
			spaces=$(ls | grep " " | head -1)
			echo "Working On $spaces"
			echo " "
  			x=$(ls | grep " " | wc -l)
			echo $x
			mv "$(ls | grep ' ' | head -1)" "$(ls | grep ' ' | head -1 | sed 's/ //g')"

		done


#Remove the - and numbers from dashboard files

	y=1
	while [ $y -gt 0 ]
		do
			dashes=$(ls | grep '\-[0-9+]*.json' | head -1)
  			echo "Working on $dashes"
			echo " "
			y=$(ls | ls | grep '\-[0-9+]*.json' | wc -l)
			echo $y
			mv "$(ls | grep '\-[0-9+]*.json' | head -1)" "$(ls | grep '\-[0-9+]*.json' | head -1 | sed 's/-.*/.json/g')"

		done
