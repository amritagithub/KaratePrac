
Feature: Verify the list of users
Scenario: Verify if a particular user is availble

Given url baseUrl+'/public/v2/users'
And path '7225657'
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def name = jsonResponse.name
* print name
* match name == 'Dinakar Tagore'

Scenario: Verify status returned when user is not availalble
Given url 'https://gorest.co.in/public/v2/users'
And path '30'
When method GET
Then status 404