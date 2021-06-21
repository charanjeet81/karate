Feature: Fetching all the countries details

Background: Getting the details of country India
* url 'https://reqres.in'
* header Accept = 'application/json'


Scenario: Parameter check
Given path "/api/users"
When param page = 2
When method GET
Then status 200
Then match response.page == 2

@debug
Scenario: Create a user from outside file
Given path "/api/users"
* def body = read('../../resources/user.json')
And request body
When method POST
Then status 201
Then print response
Then match response == "#object"   
Then match response.name == "morpheus"

@debug
Scenario: Create a user fetch data from config file
# host, serviceUri and validateName is coming from karate-config.js
Given url host
Given path serviceUri
And form field client_id = ''
And form field client_secret = ''
When method POST
* def accessToken = response.access_token 
# 2nd service
* def body = read('../../resources/user.json')
Given header Authorization = "Bearer "+accessToken
And request body
When method POST
Then status 201
Then print response
Then match response == "#object"
Then match response.name == validateName
Then print validateName


# not working
Scenario: Create a user using table
Given path "/api/users"
And table reqBody
|{ "name": "charan", "job": "leader" }|
And request reqBody
Then print reqBody
When method POST
Then status 201
Then print response
Then match response == "#object"
Then match response.name == "charan"







