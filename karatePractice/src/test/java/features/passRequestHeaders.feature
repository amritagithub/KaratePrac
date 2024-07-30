Feature: To pass headers

Scenario: Passing the header in the request
Given header Connection = 'Keep-Alive'
When url baseUrl+'/public/v1/users'
And path '7225651'
When method GET
Then status 200