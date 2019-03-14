Feature: Checking to see if the site can be used end to end

  Scenario: Counting the number of sandiches on index
    Given I am on the index page
    Then I should have 5 sandwiches

  Scenario Outline: Navigating to show page
    Given I am on the index page
    When I click on a sandwich link <name>
    Then I should be on a show page with id <id>

    Examples:
    | name | id |
    | Ham  | 1  |
    | Jam  | 2  |
    | Spam | 3  |
    | Clam | 4  |
    | Lamb | 5  |
