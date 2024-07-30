Feature: Verify how tpo pass query parameter

Scenario: get all active users
* def query = {status:'active', gender:'male'}
Given url baseUrl+'/public/v1/users'
And params query
When method GET
Then status 200
* print response


Scenario: get all active users and get the count
* def query = {status:'active', gender:'male'}
Given url baseUrl+'/public/v1/users'
And params query
When method GET
Then status 200
* print response
* def jsonResponse = response
* def usercount = jsonResponse.data.length
* print usercount