# Domain model

The product revolves around one poll open at a time: a teammate proposes it
with a handful of lunch options, every other teammate votes once, and the
poll resolves to a winning option once it closes.

```mermaid
erDiagram
    POLL {
        string id PK
        string day
        string proposedBy
        string status
        string cutoffAt
        string winningOptionId FK
        string createdAt
    }
    OPTION {
        string id PK
        string pollId FK
        string label
    }
    VOTE {
        string id PK
        string pollId FK
        string optionId FK
        string voterId
        string createdAt
    }

    POLL ||--o{ OPTION : offers
    POLL ||--o{ VOTE : collects
    OPTION ||--o{ VOTE : receives
```

- A `POLL` holds between 2 and 5 `OPTION`s, fixed at creation. `status` is
`open` or `closed`. `winningOptionId` is set once the poll closes, and left
unset when no votes were cast.
- A `VOTE` links one `voterId` to one `OPTION` of one `POLL`; a voter has at
most one vote per poll, and a vote's `optionId` never changes once cast.
`voterId` is never exposed back to other teammates — it exists only to
enforce one vote each.