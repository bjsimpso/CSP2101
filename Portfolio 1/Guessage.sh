#!/bin/bash
guess=1
#The script will treat subsequent occurrences of num  as an integer.
typeset -i  num=0

#-e will close if error. if no error will print message below.
echo -e "This was created by Benjamin Simpson: 10365180\n Try and guess an age from 1 to 80\n"

# Generate a random number between 1 and 80
rndNum=$(( ( RANDOM % 80 )  + 1 ))

# Enter while loop where it will loop until the guess is the rndNum meaning the user guessed correctly.
while (( guess != rndNum )); do
	num=num+1                                    #Every time the while loops restarts the number of guesses is increased by 1.
	read -p "Enter guess $num: " guess	       #Check the user input number and store to guess, then enter if statement.
	if (( guess < rndNum )); then
		echo "Higher ↑↑↑"		       #If user input number is smaller than the correct number, print higher.
	elif (( guess > rndNum )); then
		echo "Lower ↓↓↓ "			       #If user input number is higher than the correct number, print lower.
	fi					       #close if statement

done
echo -e "Well Done! That took you $num guesses.\n"     #when while loop finally ends after correct guess. Print Well done message and how many guesses it took.
