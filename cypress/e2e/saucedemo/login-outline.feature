Feature: Login to SauceDemo

  Background:
    Given I open the SauceDemo login page

  Scenario: Login with different credentials
    When I enter the username "<username>" and password "<password>"
    And I click the login button
    Then I should <expectedResult>

  Examples:
  | username      | password      | expectedResult                      |
  | standard_user | secret_sauce  | be redirected to the inventory page |
  | invalid_user  | secret_sauce  | see an error message                |


  

    