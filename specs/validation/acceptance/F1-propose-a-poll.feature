Feature: F1 Propose a poll

  @story-F1.1
  Rule: A poll needs between 2 and 5 lunch options

    Scenario: Proposing a poll with three options
      Given no poll is open today
      When Olivia the teammate proposes a poll with options "Bridge Cafe", "Riverside Kitchen" and "Taco Stand"
      Then today's poll is open with those three options

    @negative
    Scenario: A single option is refused
      Given no poll is open today
      When Olivia the teammate tries to propose a poll with only the option "Bridge Cafe"
      Then no poll is open today

    @negative
    Scenario: Six options are refused
      Given no poll is open today
      When Olivia the teammate tries to propose a poll with six options
      Then no poll is open today

  @story-F1.1
  Rule: A lunch option is free text, not chosen from a saved list

    Scenario: An option is any text the proposer types
      Given no poll is open today
      When Olivia the teammate proposes a poll with options "Grandma's Kitchen Experiment" and "Leftover Pizza"
      Then today's poll is open with those two options

  @story-F1.2
  Rule: Only one poll may be open at a time

    @negative
    Scenario: A second poll is refused while one is already open
      Given a poll is open today with options "Bridge Cafe" and "Riverside Kitchen"
      When Dan the teammate tries to propose another poll with options "Taco Stand" and "Sushi Place"
      Then today's open poll still has options "Bridge Cafe" and "Riverside Kitchen"
