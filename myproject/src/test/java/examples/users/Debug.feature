Feature: Fetching all the user details

Background: Getting the details of country India
* url 'https://reqres.in'
* header Accept = 'application/json'
* def first_name = "charan"

Scenario: Testing the fetching data from external source.
Given path "/api/users/2"
And method GET
Then print response
* def name = response.data.first_name
And print name
And status 200

# updating post
Given path "/api/users"
* def body = { "name": '#(name)', "job": "Automation" }
And request body
And method POST
Then print response
And status 201
