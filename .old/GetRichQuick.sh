#!/bin/bash
echo 'name plz'
read name
echo age plz
read age
echo "hello $name you are $age years old"

sleep 2
echo "Calculating"
echo ".........."
sleep 1
echo "**........"
sleep 1
echo "****......"
sleep 1
echo "******...."
sleep 1
echo "********.."
sleep 2
echo "**********"


echo "$name you will get Millionaire at the age of $((($RANDOM % 15) + $age))"
