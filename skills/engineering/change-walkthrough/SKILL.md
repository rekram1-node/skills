---
name: change-walkthrough
description: Use only when the user explicitly asks for an interactive, in-depth walkthrough of a specific PR, commit, or diff, examining changes one at a time with pauses for questions. Do not use for high-level summaries, general questions about changes, or ordinary requests to explain what changed.
---

# Change Walkthrough

Walk through a specific PR, commit, or diff at the user's pace, starting with its high-level purpose and then getting into the implementation details one change at a time.

## Choose the Topics

Read the diff and surrounding code, then group related edits by behavioral effect rather than file or hunk. Several files may implement one change; one function may introduce several distinct behaviors.

Prioritize changes whose consequences are not obvious from the PR's stated goal: different failure handling, retained state, compatibility, side effects, or tradeoffs. Ask what could now happen differently and what the user needs to understand to judge it.

Skip predictable bookkeeping such as version strings, lockfile churn, import moves, and renames unless they hide a meaningful consequence. Don't pad the walkthrough with a file inventory or explain every edit. Order topics so foundational concepts come first, while following the user's interests.

## Rhythm

- Introduce each new change with `Step X of Y: <topic>` so the user can track progress through the selected topics.
- Show the step label only when starting a new change. Don't repeat it while answering questions or going deeper on the current change.
- Explain one change, then stop: what happened before, what happens now, and why it matters.
- "Okay," "makes sense," or "got it" means continue to the next change.
- A question means stay on that topic. Answer it directly and drill deeper only where the user is curious.
- "We'll come back to this" means remember the issue and move on.
- Don't repeatedly ask permission to continue or quiz the user. When finished, briefly surface any deferred issues.

## Style

Keep explanations short and easy to scan. Use plain language, define unfamiliar terms, and show a small example, snippet, or table when it helps. Include precise code references without overwhelming the explanation.

Distinguish new behavior from behavior preserved elsewhere. Verify claims against the implementation, state uncertainty, and flag real risks rather than defending the change.

This is a discussion: don't edit code unless asked. Understanding a change is not approval to ship it.
