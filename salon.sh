#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ My Salon ~~~~~\n"

MENU() {
  if [[ $1 ]]
  then
  echo -e "\n$1"
  fi
# welcome
echo -e "\nWelcome to My Salon, How can I help you?\n"

# services
 SERVICES=$($PSQL "SELECT * FROM services order by SERVICE_ID") 

  #display a list of the available services
  echo "$SERVICES" | while read ID BAR NAME
  do
   echo  "$ID) $NAME"
  done

#echo -e "\n1) cut\n2) colour\n3) style"
read SERVICE_ID_SELECTED
  
  #if input is not INT
  if [[ ! $SERVICE_ID_SELECTED =~ ^[1-3]+$ ]]
  then
    # return to main menu
    echo -e "\nI could not find that service. What would you like today?\n"
   echo "$SERVICES" | while read ID BAR NAME
  do
   echo  "$ID) $NAME"
  done

#echo -e "\n1) cut\n2) colour\n3) style"
read SERVICE_ID_SELECTED
  fi

#get service_id from services
SERVICE_ID_SELECTED=$($PSQL "SELECT service_id FROM services WHERE service_id = '$SERVICE_ID_SELECTED'")
SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id = '$SERVICE_ID_SELECTED'")

# phone number

echo -e "\nWhat's your phone number?"
read CUSTOMER_PHONE

CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
#if not customer 
if [[ -z $CUSTOMER_NAME ]]
then
# name
echo -e "\nWhat's your name?"

read CUSTOMER_NAME

# insert new customer
INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')")
fi
# get customer_id 
CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'")
# time 

echo -e "\nWhat time would you like your $(echo $SERVICE_NAME | sed -r 's/^ *| *$//g'), $(echo $CUSTOMER_NAME | sed -r 's/^ *| *$//g')?"
read SERVICE_TIME

# add , customer_id, service_id, time to appointment table
INSERT_INFO=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES('$CUSTOMER_ID', '$SERVICE_ID_SELECTED', '$SERVICE_TIME')")
# message confirmation
echo -e "\nI have put you down for a$SERVICE_NAME at $SERVICE_TIME, $(echo $CUSTOMER_NAME | sed -r 's/^ *| *$//g').\n"
exit
}
MENU
