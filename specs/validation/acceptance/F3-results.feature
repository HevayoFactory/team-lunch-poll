Feature: F3 Results

  @story-F3.1
  Rule: Voting closes at 11am and the winning option is then shown to everyone

    Scenario: Any teammate sees the winner once voting closes
      Given a poll today with options "Bridge Cafe" and "Riverside Kitchen" closed with "Bridge Cafe" as the winner
      When Olivia the teammate, who did not vote, views today's poll
      Then she sees "Bridge Cafe" as the winning option

  @story-F3.1
  Rule: Tied options are resolved by picking one at random

    Scenario: A tie still produces exactly one winner
      Given a poll today with options "Bridge Cafe" and "Riverside Kitchen" closed with a tied vote count
      When Dan the teammate views today's poll
      Then exactly one of "Bridge Cafe" or "Riverside Kitchen" is shown as the winning option

  @story-F3.1
  Rule: A poll with no votes closes with no winner

    Scenario: No votes means no winner is shown
      Given a poll today with options "Bridge Cafe" and "Riverside Kitchen" closed with no votes cast
      When Dan the teammate views today's poll
      Then no winning option is shown for today

  @story-F3.2
  Rule: Past polls and their results stay visible indefinitely

    Scenario: A teammate looks back at an earlier day's result
      Given a poll from three days ago closed with "Taco Stand" as the winner
      When Olivia the teammate browses past polls
      Then she sees that poll with "Taco Stand" as its winner
