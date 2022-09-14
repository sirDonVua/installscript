#!/bin/bash

x=1

while [[ $x -le 10 ]] ; do
	read -p "push-up Number $x: Press Enter to continue"
	(( x ++ )) 
done 
echo "congrats you,ve Done all your Push Ups"
