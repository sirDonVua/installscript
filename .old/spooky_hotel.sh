#!/bin/bash



echo "Welcome to Holywood Tower Hotel"
floor=19

for level in {1..19} ; do 
	if [[ $level == 13 ]] ; then 
		continue 
	fi
	
	echo "You have arrived at level $level "
	sleep 2 	
done 
