#!/bin/bash

echo "You Died"


#First Battle
echo "You walk by the lake and you find a beast fast choose (0/1)_  " && read attack

beast=$(($RANDOM % 2))

if [[ $attack == $beast || $attack == "coffee" ]] ; then
	echo "you Killed that bastered"
else
	echo "You Died"
	exit 1
fi

sleep 2

#secound battle
echo "Your next battle approches as you see him a recognized face it,s margit, name your attack he said _well with numbers_(0-9)_" && read attack

margit=$(($RANDOM%10))

if [[ $attack == $margit ]] ; then
	echo "Margit is Vanised in the dark of memories"
else
	echo "You Died"
fi
