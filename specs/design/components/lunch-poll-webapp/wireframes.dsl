screen Today "Today's lunch poll — vote or see the result"
  navbar "Lunch Poll"
  sidebar "Today -> Today | Past polls -> History"
  heading "Today's Poll"
  card "Bridge Cafe | 2 votes | option"
  row
    button "Vote for Bridge Cafe" primary -> VoteConfirmed
    button "Vote for Riverside Kitchen" -> VoteConfirmed
    button "Vote for Taco Stand" -> VoteConfirmed
  divider
  text "Voting closes at 11:00am. You can vote once."

screen NoPollToday "No poll has been proposed yet today"
  navbar "Lunch Poll"
  sidebar "Today -> Today | Past polls -> History"
  heading "No poll yet today"
  text "Be the first to propose today's lunch options."
  button "Propose a poll" primary -> ProposePoll

screen ProposePoll "Start today's lunch poll"
  navbar "Lunch Poll"
  sidebar "Today -> Today | Past polls -> History"
  heading "Propose today's poll"
  input "Option 1 (e.g. Bridge Cafe)"
  input "Option 2"
  input "Option 3 (optional)"
  input "Option 4 (optional)"
  input "Option 5 (optional)"
  row
    right
    button "Cancel" -> Today
    button "Start poll" primary -> Today

screen VoteConfirmed "Your vote is recorded"
  navbar "Lunch Poll"
  sidebar "Today -> Today | Past polls -> History"
  heading "Thanks — your vote is in"
  text "You've voted. Results appear once voting closes at 11:00am."
  badge "Voted" success
  button "Back to today" -> Today

screen Result "Today's winning lunch option"
  navbar "Lunch Poll"
  sidebar "Today -> Today | Past polls -> History"
  heading "Today's winner"
  card "Bridge Cafe | 5 votes | won today"
  table "Option | Votes"
    row "Bridge Cafe | 5"
    row "Riverside Kitchen | 3"
    row "Taco Stand | 1"
  text "If no votes were cast, this card is replaced with \"No votes cast today\"."
  button "See past polls" -> History

screen History "Past polls and what won each day"
  navbar "Lunch Poll"
  sidebar "Today -> Today | Past polls -> History"
  heading "Past polls"
  table "Day | Winner | Votes" -> PastPollDetail
    row "Oct 3 | Riverside Kitchen | 4"
    row "Oct 2 | Bridge Cafe | 6"
    row "Oct 1 | No votes cast | 0"

screen PastPollDetail "What happened on a past day"
  navbar "Lunch Poll"
  sidebar "Today -> Today | Past polls -> History"
  heading "Oct 3 — Riverside Kitchen won"
  table "Option | Votes"
    row "Riverside Kitchen | 4"
    row "Bridge Cafe | 2"
  button "Back to history" -> History

flow "Propose and vote"
  role "Teammate"
  description "A teammate starts or joins today's poll and casts their vote"
  Today
  NoPollToday
  ProposePoll
  VoteConfirmed

flow "See results and history"
  role "Teammate"
  description "A teammate checks today's result and browses past polls"
  Result
  History
  PastPollDetail
