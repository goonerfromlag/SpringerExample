Feature: Find & use the springer nature search tool

  Background:
   Given I'm on the springer homepage and the search tool is displayed


  Scenario: User successfully searches using Author's name
    Given I enter 'michael reed' in the search field
    When I click the submit button
    Then the search results header contains 'michael reed'
    And the search results contain 'michael reed'


  Scenario: User unsuccessfully searches using Author's name
    Given I enter 'muchogobbledygook' in the search field
    When I click the submit button
    Then the search results header contains 'muchogobbledygook'
    And the no results message is displayed


