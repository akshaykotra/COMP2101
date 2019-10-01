#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data
# TASK 2: Improve it by rewriting it to use the if command
# TASK 3: Improve it by giving them 3 tries to get it right before failing (test 3 times but only if necessary)
#           *** Do not use the exit command

myString="TestString"
#referenceString="password"
#[ $myString = $referenceString ] && echo "You guessed the password!" || echo "The password eludes you..."
totalTries=3
echo "Please guess the password"
while [ $totalTries -ge 1 ] && [ $totalTries -le 3 ]
do
read password
if [ $myString = $password ]
then
  echo "you have guessed the correct password."
break
elif [ $myString != $password ]
then
  echo "password incorrect please try again."
fi
totalTries=$[$totalTries -1]
done
