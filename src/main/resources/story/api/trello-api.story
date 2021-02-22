Description: Task 3, Task 1-c

Scenario: Sign in

Given I am on the main application page
When I click on element located `By.xpath(//a[text()="Log in"])`
When I fill <Useremail>, <Password> in registration form
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I wait until element located `By.xpath(//*[@data-test-id="home-team-settings-tab"]/descendant::span[text()="Settings"])` appears
When I find <= '1' elements by By.xpath(//*[@data-test-id="home-team-settings-tab"]/descendant::span[text()="Settings"]) and for each element do
|step|
|When I click on element located `By.xpath(//*[@data-test-id="home-team-settings-tab"]/descendant::span[text()="Settings"])`|
Then the text 'm' exists
Then the text 'Slack Team Linking' exists
Examples:
|Useremail           |Password  |
|Nasska.s@rambler.ru |N8722922n|


Scenario: Use API for board creation

When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?key=${key}&token=${token}&name=${boardName}'
Then `${responseCode}` is equal to `200`