@dubug
Feature: Doing Schema validation

  Background: 

  Scenario: Validating the schema
    Given url "https://reqres.in/api/users/2"
    When method GET
    Then status 200
    Then print response
    #Then print $
    Then match response == "#object"
    * def expectedResult =
      """
      {
        "data": {
          "id": "#number",
          "email": "#string",
          "first_name": "#string",
          "last_name": "#string",
          "avatar": "#present"
        },
        "support": {
          "url": "#string",
          "text": "#string"
        }
      }
      """
    Then match response == expectedResult
    Then print response
    Then print response.support.text
    Then match response.support.text contains "To keep ReqRes free, contributions"
