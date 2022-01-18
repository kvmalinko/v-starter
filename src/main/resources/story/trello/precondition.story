Scenario: Sign up new user
Given I am on the main application page
When I enter '<email>' in a field by the xpath '//div[@class='d-none d-md-block col-md-7 pr-md-2']/input'
When I click on an element by the xpath '//div[@class='col-md-5 pl-md-2']/button'
When I enter '<fullName>' in a field by the xpath '//input[@id='displayName']'
When I enter '<password>' in a field by the xpath '//input[@id='password']'
When I click on an element by the xpath '//button[@id='signup-submit']'
When I enter '<teamName>' in a field by the xpath '//input[@id='moonshotCreateTeam']'
When I click on an element by the xpath '//div[text()='Select an option...']'
When I click on an element with the text 'Other'
When I click on an element by the xpath '//button[@data-test-id='moonshot-continue-button']'
When I click on an element by the xpath '//button[@data-test-id='moonshot-start-free-account']'
When I click on an element by the xpath '//button[@data-test-id='moonshot-success-button']'
Examples:
|email                             |fullName                  |password                        |teamName  |
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|#{generate(regexify '[a-z]{8}')}|FirstTeam |
|#{generate(Internet.emailAddress)}|#{generate(Name.fullName)}|#{generate(regexify '[a-z]{8}')}|SecondTeam|
