#!/usr/bin/env bash

# Function to count files in current directory
function count_files {
    echo $(ls -1 | wc -l)
}

correct_answer=$(count_files)
user_guess=-1

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"
echo "Enter your guess:"

# Main loop
while [[ $user_guess -ne $correct_answer ]]
do
    read user_guess

    if [[ $user_guess -lt $correct_answer ]]; then
        echo "Too low! Try again:"
    elif [[ $user_guess -gt $correct_answer ]]; then
        echo "Too high! Try again:"
    else
        echo "Congratulations! Your guess is correct!"
    fi
done


==================== Makefile ====================
README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time of Run" >> README.md
	echo "$$(date)" >> README.md
	echo "" >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	echo "$$(wc -l < guessinggame.sh) lines" >> README.md


.PHONY: clean
clean:
	rm -f README.md