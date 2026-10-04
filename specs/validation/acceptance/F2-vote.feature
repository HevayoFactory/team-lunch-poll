Feature: F2 Vote

  @story-F2.1
  Rule: A teammate votes for one option on today's open poll

    Scenario: Casting a vote
      Given a poll is open today with options "Bridge Cafe" and "Riverside Kitchen"
      When Dan the teammate votes for "Bridge Cafe"
      Then Dan's vote for "Bridge Cafe" is recorded

  @story-F2.1
  Rule: A vote is final once cast

    @negative
    Scenario: A teammate cannot change their vote
      Given a poll is open today with options "Bridge Cafe" and "Riverside Kitchen"
      And Dan the teammate has voted for "Bridge Cafe"
      When Dan the teammate tries to vote for "Riverside Kitchen"
      Then Dan's vote is still for "Bridge Cafe"

  @story-F2.1
  Rule: A teammate votes once per poll

    @negative
    Scenario: A second vote from the same teammate is refused
      Given a poll is open today with options "Bridge Cafe" and "Riverside Kitchen"
      And Dan the teammate has voted for "Bridge Cafe"
      When Dan the teammate tries to vote again for "Bridge Cafe"
      Then the poll has exactly one vote from Dan

  @story-F2.2
  Rule: No live tally is shown while the poll is open

    Scenario: A teammate sees only whether they've voted, not the counts
      Given a poll is open today with options "Bridge Cafe" and "Riverside Kitchen"
      And Dan the teammate has voted for "Bridge Cafe"
      When Dan the teammate views today's poll
      Then he sees that he has voted, and no vote counts for either option

  @story-F2.2
  Rule: Voting is anonymous

    Scenario: Vote counts never name who cast them
      Given a poll is open today with options "Bridge Cafe" and "Riverside Kitchen"
      And Dan the teammate has voted for "Bridge Cafe"
      When Olivia the teammate views today's poll
      Then she does not see which option Dan voted for
