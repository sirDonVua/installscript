#!/bin/bash

name=$1
co=$2
user=$(whoami)
loc=$(pwd)
date=$(date)
echo "Good morning $name"
sleep 1
echo "you are looking good today $name"
sleep 1
echo "you have the best $co ever $name"
sleep 2 

echo "your user is $user"
sleep 1 
echo "you are at $loc"
sleep 1
echo "today is $date"
