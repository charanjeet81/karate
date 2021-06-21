Feature: Fetching all the countries details

Background: Getting the details of country India
* url 'https://reqres.in'
* header Accept = 'application/json'
* def MyClass = Java.type("examples.JavaFunctions");
* def body = new MyClass().getRequest();

Scenario: Create a user from outside file
Given path "/api/users"
And request body
And print body
When method POST
Then status 201
Then print response
Then print response.id 
* def output =  MyClass.storeResponse(response.id)