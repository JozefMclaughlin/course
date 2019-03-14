Feature: Hooks and Tags demo
  As a traniee
  I want to see how hooks and tags work
  So that I can use cucumber efficiently



  Scenario: Check for a name
    Given I have a before hook in place with name details
    Then I can validate this informaion


  @test1
  Scenario: a second Scenario which could be ran
    Given I use a tag
    Then only this test will run
