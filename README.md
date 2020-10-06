# flask-api

 This is a flask api, that a manager in a retail company can use.

 The manager can register and then login.

 He/She can create different stores, then post items to those stores, update the details of the items, and  delete the items and stores. (All the items have to be unique btw)

 Code Specifics:

 When you start the server as per the instructions below, a database will be automatically created inside the code folder. (I just implemented this so that the data will be persistent)

 The app has 3 resources, the user, the item, the store. You can find them in the resources folder. Then inside each of this files, you will be able to find the http methods that you can perform
 on these resources.

 Authentication: Http requests to take note of, once you register a new user using /register, you can make a api call with the user you registered with to /auth, this will return you an access token using jwt

 You can then use this access token to make a GET request for a a particular item details (see client2.sh test script for more clarity). The rest of the api calls do not require this access_token

 2 mime-types: I have implemented the POST request for a new item to accept both json and plain text in the body (see client1.sh for more details)

 API request types used: GET, POST, PUT, DELETE


# How to run the code:

cd into the root folder of this project

Then run: pip install -r requirements.txt

Then cd into the folder named code, then start the server using: python api.py

# To run the test scripts:

cd into the test_scripts folder

Then run: bash client1.sh

Then copy paste the access_token after running client1.sh into client2.sh

Then run: bash client2.sh