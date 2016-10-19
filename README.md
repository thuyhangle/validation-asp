# validation-asp
Basic input validation in ASP.NET

1. Create an empty ASP.NET-project NOTE choose Framework 4.0
2. Add a WebForm namde PersonInfo to your application. Then add labels and textBoxes for


* Firstname
* Lastname
* PostalCode
* Email
* Age
* Password (in the textBox set the TextMode to Password)
* RepeatPassword (in the textBox set the TextMode to Password)


3. Add RequiredFieldValidator to every textboxes
4. Add a button to your page and create an click event for the button (you don't need to add any code for the event) 

5. Add below validations for the given textboxes and set reasonable error messages for each of them


* PostalCode->RegularExpressionValidator->PostalCode->ValidationExpression = FrenchPostalCode
* Email->RegularExpressionValidator->ValidationExpression = InternetEmail
* Age->RangeValidator (valid age between 0 and 110)
* RepeatPassword (in the textBox set the TextMode to Password)->CompareValidator (set compare to your "password-box")



###### For those fields which has two validators, set in the validators properties "Display->Dynamic" and then you will have the error messages in the same place. Example in below picture PostalCodes validators uses Dynamic and Email Static Display. 

Some notes!

###### While executing the application:If you get and Error which says, something about JQuery -> You can fix this, if you add below lines to WebConfig
<appSettings>
	<add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
</appSettings>
	
After adding validator, build your application. Sometimes you can not configure the validator before building
