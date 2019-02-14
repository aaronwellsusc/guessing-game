#!/usr/bin/env bash
# File: guessinggame.sh

clear

echo "Guess how many files are in the current directory"

response=0
count=$(ls | wc -l)

function checker () {
  if [[ $response -gt $count ]]
  then
    echo "Too high, guess again..."
  elif [[ $response -lt $count ]]
  then
    echo "Too low, guess again..."
  fi
}

while [[ $response -ne $count ]]
do
  read guess
  let response=$guess
  if [[ $response -ne 0 ]]
  then
    checker
  else
    clear
  fi
done

echo "NAILED IT! There are $response files!"
