# Team Lunch Poll

## Problem Statement

Deciding where a team orders lunch from usually plays out as a slow chat
thread: options get buried, nobody tallies the replies, and by the time a
decision emerges it is too late to order in time.

## Solution

A simple poll: a teammate proposes a few lunch options for the day, everyone
votes once, and the winning option is shown automatically the moment voting
closes at 11am — no manual tallying.

## Actors

- Teammate: Any member of the team. Can propose a lunch poll for a day, vote
once on an open poll, and see the results once voting closes.

## Features

- F1 [Propose a poll](features/F1-propose-a-poll.md)
- F2 [Vote](features/F2-vote.md)
- F3 [Results](features/F3-results.md)

## Product-wide

See [Product-wide](product-wide.md).

## Out of Scope

- Multiple teams running independent polls — this product serves one team
only. *assumed*
- Ordering or paying for the chosen lunch option — the poll only decides which
option wins.