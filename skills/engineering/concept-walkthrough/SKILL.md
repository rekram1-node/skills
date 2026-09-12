---
name: concept-walkthrough
description: Use when the user says they don't understand a concept, protocol, or system from the ground up and wants it broken down step by step, one piece at a time, with room to ask follow-ups before moving on. Triggers on phrases like "I still don't know what X is", "go lower level", "break it down", "explain literally everything", or "too verbose, step by step".
---

# Concept Walkthrough

Teach one unfamiliar concept at the user's pace. The user is smart but missing the foundations; the goal is that they understand every piece, not that they receive a complete document.

## Before Starting

Do the research first. Read the spec, the code, the peer implementations. Verify every claim you are about to make so you never have to walk one back mid-walkthrough. If the user asked what other projects do, fetch their actual artifacts (source files, published documents, live HTTP responses) rather than summarizing blog posts.

Plan the path before speaking. Work backwards from the mechanism the user asked about to the problem it solves, then forwards again. Order steps so each depends only on what came before. Typical shape:

1. The concrete problem being solved, in the user's own terms.
2. The cast: the parties involved and what each one wants.
3. The baseline mechanism that everyone already uses.
4. Where it breaks, and why.
5. The new mechanism and what it changes.
6. The tradeoff it introduces.
7. Where it lands in the user's own code.
8. Anything adjacent the user raised earlier, now that they can evaluate it.

## Rhythm

- State the total number of planned steps before starting. Introduce each step with `Step N of M — <topic>` so the user can track both progress and what remains. Show the label only when starting a new step.
- One step is one idea, roughly five to ten lines. Explain it, lock in the single thing they must retain, then stop. End with a one-line pointer to what comes next.
- "ok", "makes sense", "continue" means advance one step.
- A quoted fragment of your own text followed by "explain this" or "what do you mean" means stay on that fragment. Answer only that, in plain terms, and go deeper only as far as they push.
- "Too verbose" means cut hard. Do not restate what was already covered; resume with shorter steps.
- Do not quiz the user or ask permission to continue.
- When the path is finished, recap the whole route in a short list and propose the concrete next action.

## Style

Use the user's real names and values: their tool, their servers, the real URL, the real port, the real file and line. Prefer a small message trace or a two-column comparison over paragraphs. Every code or config snippet must be real and verified, not illustrative.

Define every term the first time it appears, or leave it out. Spec identifiers, RFC numbers, and internal jargon are noise unless the user asked for them; if you need a reference, give a link once.

Be exactly precise. "Nobody does X" and "only the hosted apps do X" are different claims; if you said one and meant the other, say so plainly and restate correctly. Distinguish what is new from what is already true today, and what is a spec requirement from what is one vendor's choice.

When comparing to peers, present a table and then say which peer the user's situation most resembles and why.

This is a discussion, not a deliverable. Do not produce documents, plans, or code unless asked. When the user does ask to build, they now share the vocabulary, so keep the resulting code comments in the same plain language.
