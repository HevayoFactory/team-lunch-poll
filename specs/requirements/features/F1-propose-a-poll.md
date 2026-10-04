# Propose a poll

## Purpose

Lets any teammate start a lunch poll for a day by naming a few lunch options
for the team to vote on.

## User Stories

- F1.1 As a teammate, I start a lunch poll for a day, naming between 2 and 5
lunch options as free text.
- F1.2 As a teammate, I can't start a new poll while today's poll is still
open — only one poll is open at a time.

## Decisions

- A lunch option is free text (e.g. a restaurant or dish name) — not chosen
from a saved list of places.
- A poll's options are fixed once created; the proposer cannot edit or cancel
it.