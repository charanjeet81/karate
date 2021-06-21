Feature: Data parameterization example
Background: 
* url 'https://reqres.in'

Scenario Outline: Testing the fetching data from external source.
Given path "/api/users"
And request { "name": <name>, "job": <job> }
And method POST
Then print response
And status 201

Examples:
|name      |job   |
|Faisal    |leader|
|Mazhar    |test  |
|Mansook   |dev   |


Scenario Outline: Testing the fetching data from external file.
# make sure CSV is in text data format
Given path "/api/users"
And request { "name": <name>, "job": <job> }
And method POST
Then print response
And status 201

Examples:
|read('../../resources/TestData.csv')|