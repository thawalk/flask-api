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
echo "-----------------------------creating 2 new stores---------------------------"
curl --location --request POST 'http://127.0.0.1:5000/store/store1' \
--data-raw ''

curl --location --request POST 'http://127.0.0.1:5000/store/store2' \
--data-raw ''

curl --location --request POST 'http://127.0.0.1:5000/store/store3' \
--data-raw ''

#post a item (table) to the store, with its price
#this API call can take 2 mime-types, json and string
#POST ITEM
echo "---------------------post new item details (piano and phone) to the store-----------------"
curl --location --request POST 'http://127.0.0.1:5000/item/piano' \
--header 'Content-Type: application/json' \
--data-raw '{
    "price": 15.99,
    "store_id": 1
}'

curl --location --request POST 'http://127.0.0.1:5000/item/phone' \
--header 'Content-Type: text/plain' \
--data-raw '{
    "price": 15.99,
    "store_id": 2
}'

curl --location --request POST 'http://127.0.0.1:5000/item/pencil' \
--header 'Content-Type: text/plain' \
--data-raw '{
    "price": 15.99,
    "store_id": 2
}'

curl --location --request POST 'http://127.0.0.1:5000/item/table' \
--header 'Content-Type: text/plain' \
--data-raw '{
    "price": 15.99,
    "store_id": 3
}'

#get all the items and their details
#GET items
curl --location --request GET 'http://127.0.0.1:5000/items'

#use put to update the table's price
#PUT ITEM
echo "----------------------------update the piano's price-----------------------------"
curl --location --request PUT 'http://127.0.0.1:5000/item/piano' \
--header 'Content-Type: application/json' \
--data-raw '{
    "price": 17.99,
    "store_id": 1
}'

#get the store details, with the updated table price
#GET STORE
echo "---------------------get the store details with updated piano price-----------------"
curl --location --request GET 'http://127.0.0.1:5000/store/store1' \
--data-raw ''

#get all the stores and their details
#GET STORES
echo "---------------------get all the stores and their details-----------------"
curl --location --request GET 'http://127.0.0.1:5000/stores' \
--data-raw ''


#delete the table from the store
#DELETE ITEM
echo "---------------------delete the piano, phone and pencil from the stores-----------------"
curl --location --request DELETE 'http://127.0.0.1:5000/item/piano' \
--data-raw ''

curl --location --request DELETE 'http://127.0.0.1:5000/item/phone' \
--data-raw ''

curl --location --request DELETE 'http://127.0.0.1:5000/item/pencil' \
--data-raw ''


#delete the store
#DELETE STORE
echo "---------------------delete the stores-----------------"
curl --location --request DELETE 'http://127.0.0.1:5000/store/store1' \
--data-raw ''

curl --location --request DELETE 'http://127.0.0.1:5000/store/store2' \
--data-raw ''







