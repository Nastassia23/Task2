Description: Task 2- a,b,c,d


GivenStories: story/web/signup-precondition.story


Scenario: Sign in

Given I am on the main application page
When I click on an element by the xpath '//a[text()="Log in"]'
When I enter `Nasska.s@rambler.ru` in field located `By.xpath(//*[@id="user"])`
When I wait until element located `By.xpath(//*[@id="login"])` appears
When I click on element located `By.xpath(//*[@id="login"])`
When I wait until element located `By.xpath(//*[@id="password"])` appears
When I enter `N8722922n` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"]/span/span)`
When I wait until element located `By.xpath(//*[@data-test-id="header-member-menu-button"])` appears
Then the page with the URL 'https://trello.com/nst231/boards' is loaded

Scenario: Verify profile
Given I am on a page with the URL 'https://trello.com/nst231/boards'
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I wait until element located `By.xpath(//*[@data-test-id="header-member-menu-popover"]/descendant::span[text()="Add Another Account"])` appears
Then the text 'Nst23' exists
Then the text 'nasska.s@rambler.ru' exists

Scenario: Visual test of a pages
Given I am on a page with the URL 'https://trello.com/nst231/boards'
When I wait until element located `By.xpath(//*[@data-test-id="home-link"]/descendant::span[text()="Home"])` appears
When I click on element located `By.xpath(//*[@data-test-id="home-link"]/descendant::span[text()="Home"])`
When I wait until element located `By.xpath(//*[@class="home-main-content-container"]/descendant::div[@class="_2kOh7byeU56ejb _2I1s0GWmtN1Yvq _3B2MxeCVTLyn_D"])` appears
When I change context to element located `By.xpath(//*[@class="home-main-content-container"]/descendant::div[@class="_2kOh7byeU56ejb _2I1s0GWmtN1Yvq _3B2MxeCVTLyn_D"])`
When I compare against baseline with `home6`

Scenario: Visual test of a pages-2
Given I am on a page with the URL 'https://trello.com/nst231/boards'
When I wait until element located `By.xpath(//*[@data-test-id="templates"]/descendant::span[text()="Templates"])` appears
When I click on element located `By.xpath(//*[@data-test-id="templates"]/descendant::span[text()="Templates"])`
When I wait until element located `By.xpath(//*[@class="all-boards"]/descendant::a[@title]/descendant::img[@alt="Business Icon"])` appears
When I change context to element located `By.xpath(//*[@class="all-boards"]/descendant::a[@title]/descendant::img[@alt="Business Icon"])`
When I compare against baseline with `template4`

Scenario: Visual test of a pages-3
Given I am on a page with the URL 'https://trello.com/nst231/boards'
When I wait until element located `By.xpath(//*[@data-test-id="home-team-tables-tab"]/descendant::span[text()="Team table"])` appears
When I click on element located `By.xpath(//*[@data-test-id="home-team-tables-tab"]/descendant::span[text()="Team table"])`
When I wait until element located `By.xpath(//*[@data-test-id="profileImage"]/descendant::span[@aria-label="OrganizationIcon"])` appears
When I change context to element located `By.xpath(//*[@data-test-id="profileImage"]/descendant::span[@aria-label="OrganizationIcon"])`
When I compare against baseline with `table5`

Scenario: Visual test of a pages-4
Given I am on a page with the URL 'https://trello.com/nst231/boards'
When I wait until element located `By.xpath(//*[@data-test-id="home-team-members-tab"]/descendant::span[text()="Members"])` appears
When I click on element located `By.xpath(//*[@data-test-id="home-team-members-tab"]/descendant::span[text()="Members"])`
When I wait until element located `By.xpath(//img[contains(@src,'/images/organization/empty-board')])` appears
When I change context to element located `By.xpath(//img[contains(@src,'/images/organization/empty-board')])`
When I compare against baseline with `member3`

Scenario: Visual test of a pages-5
Given I am on a page with the URL 'https://trello.com/nst231/boards'
When I wait until element located `By.xpath(//*[@data-test-id="home-team-settings-tab"]/descendant::span[text()="Settings"])` appears
When I click on element located `By.xpath(//*[@data-test-id="home-team-settings-tab"]/descendant::span[text()="Settings"])`
When I wait until element located `By.xpath(//*[@data-test-id="profileImage"]/descendant::span[@aria-label="OrganizationIcon"])` appears
When I change context to element located `By.xpath(//*[@data-test-id="profileImage"]/descendant::span[@aria-label="OrganizationIcon"])`
When I compare against baseline with `setting5`

