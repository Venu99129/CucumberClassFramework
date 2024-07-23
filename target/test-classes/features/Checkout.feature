Feature: Verify Checkout Functionality

  @WIP
  Scenario Outline: Verify user can see correct prices on checkout page
    Given user opens the website
    Then verify user is on login page
    When user enters username "<username>" and password "<password>"
    Then verify user is on home page
    When user click on add to cart button for "Sauce Labs Backpack"
    And user click on add to cart button for "Sauce Labs Bike Light"
    Then verify cart icon displays cart value to "2"
    When user click on cart icon
    Then verify user is on cart page
    And verify item information on cart page
    When user click on checkout button
    Then verify user is on shipping information page
    When user fill all shipping details
    And click on continue button
    Then verify user is on checkout page
    And verify item prices display correctly on checkout page

      Examples:
        | username                | password     |
        | standard_user           | secret_sauce |
        | problem_user            | secret_sauce |
        | performance_glitch_user | secret_sauce |
        | error_user              | secret_sauce |
        | visual_user             | secret_sauce |