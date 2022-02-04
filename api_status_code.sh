#!/bin/bash 

# INPUT HOST, USERNAME, PASSWORD 

read -p 'LOCAL_HOST:' LOCAL_HOST
read -p 'USERNAME:' USERNAME
read -p 'PASSWORD:' PASSWORD

#take user input and put into variable

LOCAL_HOST=$LOCAL_HOST
USERNAME=$USERNAME
PASSWORD=$PASSWORD


# Set username and password
username=$USERNAME
password=$PASSWORD


echo "START THE API CALL"




# USE --insecure  FOR HTTP CALL

#GET
statusCode=(curl --location --insecure --request GET $LOCAL_HOST'/config/etc/example/')\
--header 'Header: '${username} \
--header 'Header: '${password} \

echo "Status Code : " $statusCode

# Sleep for 5 seconds
sleep 5s  

# Evalued the statusCode
if [ $statusCode -eq 200 ]; 

   then
    echo "ON"
  else
    echo "OFF"
fi 


echo " END"
