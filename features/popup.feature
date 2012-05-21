Feature: Testing a Popup

  @javascript
  Scenario:
    Given I click the login button
    When I sign in via Facebook
    Then I should see my name

  @javascript
  Scenario:
    Given I click the login button
    When I sign in via Facebook
    When I post to my wall
    Then I should not get an error

  @javascript
  Scenario:
    Given I click the login button
    When I sign in via Facebook
    When I send a request
    Then I should not get an error
