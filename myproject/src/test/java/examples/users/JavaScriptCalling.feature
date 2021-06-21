Feature: Testing the JS function invocation
Background: 
* url 'https://reqres.in/'
* header Accept = 'application/json'

Scenario: To validate the JS invocation
Given path "/api/users"
And param page = 2
When method GET
Then status 200
And print response
* def array = response.data
Then print "Printing array=>", array
* def lengthFunction =
"""
function(arg)
{
	return arg.length;
}
"""
#              call <functionName> <parameters>
* def length = call lengthFunction array   
Then print 'Lenght is ==>', length

