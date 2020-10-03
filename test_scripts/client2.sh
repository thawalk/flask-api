#!/bin/bash

#get a particular item and its details, with the access token that is received, when the user logs in using 'http://127.0.0.1:5000/auth' in client1.sh
#copy paste the access_token at <access_token> below then run this script 
#if the token has expired, run client1.sh again to get a new access_token
GET ITEM
curl --location --request GET 'http://127.0.0.1:5000/item/table' \
--header 'Authorization: JWT <access_token>'

#example:
# curl --location --request GET 'http://127.0.0.1:5000/item/table' \
# --header 'Authorization: JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZGVudGl0eSI6MSwiaWF0IjoxNjAxNzI4MDM3LCJuYmYiOjE2MDE3MjgwMzcsImV4cCI6MTYwMTcyODMzN30.0tcfWQpC49tR7dpI7hfQK30MMLmfPJGKM_d-VkU9TMA'



