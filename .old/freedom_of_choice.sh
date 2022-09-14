#!/bin/bash

until [[ $order == "coffee" ]] ; do
	echo "Would you like to order a Coffee or tea"
	read order 
done 
echo "Here we are, That,s the right Answer !!"
