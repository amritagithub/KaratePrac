
Feature: To pass auth token

Scenario: Passing the token in the request
Given header Connection = 'Keep-Alive'
When url baseUrl+'/public/v1/users'
And path '7225651'
When method GET
Then status 200

