#!/bin/bash

read -p "Enter your name: " name

echo -n "Loading"

for i in 1 2 3
do
    sleep 1
    echo -n "."
done

echo

user_id=$UID

if [[ "$user_id" -eq 0 ]]; then
    echo "Hello $name"
    echo "Your User ID is $user_id, you are root"
else
    echo "Hello $name"
    echo "Your User ID is $user_id, you are not root"
    exit 1
fi