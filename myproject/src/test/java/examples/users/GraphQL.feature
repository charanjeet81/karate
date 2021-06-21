@GraphQL
Feature: GraphQL

Background: 
* url 'https://api.graphql.jobs'

Scenario: Testing GraphQL response
Given path "/"
Given text query = 
"""
query
{
    jobs{
        title, id
    }
}
"""
And request { query: '#(query)' }
When method POST
Then status 200
And print response
Then match response == "#object"
Then match response.data.jobs[76].title == "Backend Engineer"
