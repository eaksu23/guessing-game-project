#!/usr/bin/env bash
# File: guessinggame.sh

function getguess {
  read -p "Please guess the number of files in the current directory: " user_input
  echo $user_input
}

num_files_actual=$(ls -A | wc -l)
num_files_guess=$(getguess)

while [[ $num_files_guess != $num_files_actual ]]
do
  if [[ $num_files_guess =~ [0-9]+ ]]
  then
    if [[ $num_files_guess -gt $num_files_actual ]]
    then
      echo "Your guess is too high"
    else
      echo "Your guess is too low"
    fi
  else
    echo "Please enter an integer!"
  fi
  num_files_guess=$(getguess)
done

echo "Congratulations, you guessed correctly!"
