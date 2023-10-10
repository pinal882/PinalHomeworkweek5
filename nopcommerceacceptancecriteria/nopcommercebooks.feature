Feature: Bookcategory
  Background: I should be able to see homepage
    Given I enter URL"//demo.nopcommerce.com/" in browser
    And  I am on home page

    Scenario Outline: I should be able to see top menu tabs on homepage with categories
      when I am on homepage
      Then I should be able to see top menu tabs with "<categories>"
      Examples:
      |categories        |
      |computer          |
      | Electronics      |
      | Apparel          |
      | Digital downloads|
      |Books             |
      |Jewellery         |
      |Gift card         |
      Scenario Outline: I should be able to see book page with filters

        When I select book category from top menu tabs on home page
        Then I should be navigated to book category
        And  I should be able to see "<filters>"
        Examples:
        |filters |
        |Sort by |
        |Display |
        |The grid|
        |List tab|

        Scenario Outline: I should be able to see list of terms of each filterGiven  I am on book page
          When  I click on "<filter>"
          Then I should be able to see "<list>" in dropdown menu
          Examples:
          |filter  | list                                                   |
          |sort by |Name: A-Z,Price:Low to High,Price:High to Low,Created on|
          | Display| 3,6,9                                                  |

          Scenario :  I should be able to choose any filter option with specific result
            Given  I am on book page
            When   I click on "<filter>"
            And    I click on any "<option>"
            Then  I should be able to choose any filter option from the list
            And  I should be able to see "<result>"


