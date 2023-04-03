#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))
TRIES=1
GUESS=0

GAME() {

echo "Enter your username:"
read USERNAME

RETURNING_USER=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")


if [[ -z $RETURNING_USER ]]
then
INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
echo "Welcome, $USERNAME! It looks like this is your first time here."

else
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")

echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

#grab user_id
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")

#echo $SECRET_NUMBER
echo "Guess the secret number between 1 and 1000:"
read GUESS

while [[ ! $GUESS = $SECRET_NUMBER ]]
do

    if [[ $GUESS =~ ^[0-9]+$ ]]
    then
    if [[ $GUESS -lt $SECRET_NUMBER ]]
    #input is lower than secret number
    then
    echo "It's higher than that, guess again:"
    read GUESS
    TRIES=$(( $TRIES + 1 ))
    elif [[ $GUESS -gt $SECRET_NUMBER ]]
    #input is higher than secret number
    then
    echo "It's lower than that, guess again:"
    read GUESS
    TRIES=$(( $TRIES + 1 ))
    fi
fi
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
  echo "That is not an integer, guess again:"
  read GUESS
  fi
done
#elif [[ $GUESS = $SECRET_NUMBER ]]
#then
if [[ $GUESS = $SECRET_NUMBER ]]
then
echo "You guessed it in $TRIES tries. The secret number was $SECRET_NUMBER. Nice job!"
INSERTED_INTO_GAMESr=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $TRIES)")
GUESS=1
fi
}
GAME
    
  
