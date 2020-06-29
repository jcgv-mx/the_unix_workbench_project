#!/usr/bin/env bash

# File: guessinggame.sh

# Purpose:
# Ask a user for a guess on the number of files in current directory.

# USAGE: .\guessinggame.sh

function get_number_of_files {
    local n=$(ls -l | grep "^-" | wc -l)
    echo $n
}

function guessing_game {
    local N=$(get_number_of_files)
    local n=0
    local guess=false
    local answer

    while [[ $guess == false ]]
    do
        echo "How many files are there in the current directory?"
	read answer

        if [[ $answer -gt $N ]]
        then
            echo "Your guess was too high."
	elif [[ $answer -lt $N ]]
	then
            echo "Your guess was too low."
        else
            guess=true
	    echo "You guessed the number of files... Congratulations!"
        fi
    done
}



# We execute the main function.

guessing_game
