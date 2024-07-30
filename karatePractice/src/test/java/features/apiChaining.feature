Feature: create and validate user


Background: 
* url 'https://gorest.co.in' 

* def random_string =
"""
 function(s){
var text = "";
			var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
			for(var i=0; i<s; i++)
				text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
				return text;
				}
"""
* def randomString = random_string(10)
	* print randomString
	* def payloadreq =
"""
{ "name" : "amrita", "gender" : "female", "status" : "active" }
"""
	*  payloadreq.email = randomString + "@gmail.com"
	* print payloadreq

Scenario: craete a new user

Given path '/public/v1/users'
And request payloadreq
And header Authorization = 'Bearer ' + tokenID
When method post
Then status 201
And match $.data.email == payloadreq.email
And match $.data.id == '#present'