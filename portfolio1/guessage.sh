# Student name: Anthony Mamaril
# Student number: 10480604

# This is a script called Guessage.sh that uses Functions to develop an interactive guessing game.

# First line of the script and is called a shebang (hash bang). Tells the system which shell or interpreter to use.
#!/bin/bash

# Using color codes in my scripts
RED='\033[00;31m' #Use ${RED} in the code
GREEN='\033[00;32m' #Use ${GREEN} in the code
# Will turn the color off
NCOL='\033[0m' #Use ${NCOL} in the code
# Function that will produce random numbers.

gen_rn () {
    range=$((($2-$1)+1));
    rand_num=$RANDOM;
    let "rand_num %= $range";
    rand_num=$(($rand_num+$1));
}

# Specifies the range of numbers that will be usedls in the game.
gen_rn 20 70

# This variable counts the number of guesses within the loop. The count is set to one.
count=1

# This loops the script while the condition is true
while true; do

# This prints the string inside the single quotes
echo 'Guess the Age of John'

# Prompt the user to guess the age of person
read -p 'Please enter a number: ' yourguess

# Code to check if test is correct by comparing 2 integers.
# If user input is equal to random it will echo the sentence below and the total number of attempts. The loops ends.
if [ $yourguess -eq $rand_num ] ; then 
    echo -e "${GREEN}Congratulations your answer is Correct!${NCOL}"
    echo "Your total number of attempts is $count"
    break    

# If the guess is lesser than the '$rand_num' the script will ask the user to give it another try
elif [ $yourguess -lt $rand_num ] ; then 
    echo -e "${RED}Too low... Please try again${NCOL}"
    # It will show the current number of attempts.
    echo "Number of attempts is $count"

# If the guess is greater than the '$rand_num' the script will ask the user to give it another try
elif [ $yourguess -gt $rand_num ] ; then 
    echo -e "${RED}Too high... Please try again${NCOL}"
    # It will show the current number of attempts.
    echo "Number of attempts is $count"
else 
    echo 'Invalid value entered'
fi

# This increments the counter within the loop 
(( count++ ))

done