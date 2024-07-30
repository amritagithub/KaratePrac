
Feature: To create a post request

Background: 
* url 'https://gorest.co.in' 

* def payload =
"""
{ "name" : "amrita", "email" : "test300788@test.com", "gender" : "female", "status" : "active" }
"""

Scenario: craete a new user

Given path '/public/v1/users'
And request payload
And header Authorization = 'Bearer ' + tokenID
When method POST
Then status 201
