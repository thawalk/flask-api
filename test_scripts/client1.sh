#!/bin/bash

#register a new user
#POST USER (register)
echo "---------------------registering a new user-----------------"
curl --location --request POST 'http://127.0.0.1:5000/register' \
--header 'Content-Type: application/json' \
--data-raw '{
    "username": "tharun",
    "password": "networks"
}' 

#make the user login
#POST USER (login)
echo "---------------------logging in the user-----------------"
curl --location --request POST 'http://127.0.0.1:5000/auth' \
--header 'Content-Type: application/json' \
--data-raw '{
    "username": "tharun",
    "password": "networks"
}'

#make the store
#POST STORE
echo "-----------------------------creating a new store---------------------------"
curl --location --request POST 'http://127.0.0.1:5000/store/store1' \
--header 'Content-Type: application/json' \
--data-raw ''

#post a item (table) to the store, with its price
#this API call can take 2 mime-types, json and string
#POST ITEM
echo "---------------------post a new table details to the store-----------------"
curl --location --request POST 'http://127.0.0.1:5000/item/table' \
--header 'Content-Type: application/json' \
--data-raw '{
    "price": 15.99,
    "store_id": 1
}'

curl --location --request POST 'http://127.0.0.1:5000/item/phone' \
--header 'Content-Type: text/plain' \
--data-raw '{
    "price": 15.99,
    "store_id": 1
}'

#use put to update the table's price
#PUT ITEM
echo "----------------------------update the table's price-----------------------------"
curl --location --request PUT 'http://127.0.0.1:5000/item/table' \
--header 'Content-Type: application/json' \
--data-raw '{
    "price": 17.99,
    "store_id": 1
}'

#get the store details, with the updated table price
#GET STORE
echo "---------------------get the store details with updated table price-----------------"
curl --location --request GET 'http://127.0.0.1:5000/store/store1' \
--header 'Content-Type: application/json' \
--data-raw ''

#delete the table from the store
#DELETE ITEM
echo "---------------------delete the table from the store-----------------"
curl --location --request DELETE 'http://127.0.0.1:5000/item/table' \
--header 'Content-Type: application/json' \
--data-raw ''

#delete the store
#DELETE STORE
echo "---------------------delete the store-----------------"
curl --location --request DELETE 'http://127.0.0.1:5000/store/store1' \
--header 'Content-Type: application/json' \
--data-raw ''






