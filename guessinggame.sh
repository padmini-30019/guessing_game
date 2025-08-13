#!/usr/bin/env bash

# Function to count only regular, non-hidden files in current directory
count_files() {
    find . -maxdepth 1 -type f ! -name ".*" | wc -l
}

# Store the actual number
actual=$(count_files)

echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory."

while true; do
    read -p "Enter your guess: " guess

    # Ensure input is a number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if [[ $guess -lt $actual ]]; then
        echo "Too low!"
    elif [[ $guess -gt $actual ]]; then
        echo "Too high!"
    else
        echo "Congratulations! You guessed correctly."
        break
    fi
done
