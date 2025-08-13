#!/usr/bin/env bash
count_files(){
echo $(ls -1 | wc -1)
}
actual=$(count_files)
echo "Welcome to the Guessing Game!"
echo "Guess how many files are in the current directory."
while true; do
read -p "Enter your guess:" guess
if ![["$guess"=~^[0-9]+$]]; then
echo "Invalid input. Please enter a number."
continue
fi
if[[$guess -lt $actual ]];then
echo "Too low!"
elif[[$guess -ggt $actual ]];then
echo "Too high!"
else
echo "Congratulations! You guessed correctly."
break
fi
done

