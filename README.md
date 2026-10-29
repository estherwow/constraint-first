# constraint-first

**A Claude Code skill. Everyone ships skills that expand what AI can generate. This one narrows it.**

> **Constraints did the work that freedom would not have done.**

## The problem

You ask for five headlines. You get five headlines. All of them are competent. None of them is necessary. You reject all five, ask again, and get five more of the same.

This is not a prompting problem. It is the predictable result of an open field.

A language model takes the cheapest path that passes review. When nothing is forbidden, the cheapest path is **plausibility** — assembling what is usually said in this genre. The output is grammatical, confident, and interchangeable with your competitor's.

Rejected attempts are not wasted: each rejection buys one boundary. But buying boundaries one at a time, through the client's disappointment, is the most expensive method there is.

**This skill buys them up front.**

## What it does

Seven classes of constraints that must be closed in writing **before** generation starts:

1. **Forbidden words and moves** — what you cannot say even though it's true. Words the market has devalued to zero. Words your reader reflexively deflects.
2. **The price shelf your phrasing puts you on** — every formulation automatically places the product on a shelf with a price. Which detail, moved to the front, collapses the fee?
3. **What you physically don't have** — no case studies means everything resting on proof drops out. This narrows the field hard, and that is the point.
4. **The real competitor** — almost always misidentified. It is not a similar vendor. It is *"I'll do it myself" / "let me learn more first" / "later" / "I already bought something like this and never opened it."*
5. **What everyone else in the niche says, and doesn't** — actual reconnaissance across 8–12 real examples, counted. What does *nobody* do? Either forbidden for good reason, or vacant ground.
6. **The client's facts vs. the client's hypotheses** — they arrive as one stream. Mandatory step: find which hypotheses are wrong and say so. The most valuable output of any engagement is the correction the client could not make alone.
7. **The "why does this exist" threshold** — the reduction test: *if your conclusion can be obtained by simply shortening the client's own words, it is rejected.*

Plus: the working order, the signs that constraints were never set, and why this works against the mechanics of generation rather than against the model.

## Install

```bash
git clone https://github.com/estherwow/constraint-first.git
cp -r constraint-first/skills/constraint-first ~/.claude/skills/
```

Then in Claude Code:

```
/constraint-first
```

Or let it load itself — the description triggers on "give me options", "write a headline", "find the positioning", and especially when previous attempts keep getting rejected.

## When to use it

- Positioning, naming, headlines, taglines
- A product page that isn't converting
- Any task where you've already produced several rounds and all were rejected
- Any brief that begins "be creative"

## When not to use it

When the answer is a fact, not a judgment. Constraints don't help you look something up.

## The signs you need this right now

- You generated five options and dislike all five. **The problem isn't the generation. The field was never narrowed.**
- Any of your options could be handed to your competitor unchanged.
- Your client says *"you're just repeating my own words back to me."*
- The copy contains a promise you cannot substantiate.
- The conclusion is true for everyone and necessary for no one.

## Where it came from

Three days of rejected attempts on a brand positioning problem. On the fourth day it was found in a single pass.

The three days were not failure. They were manufacturing constraints — and each constraint cost exactly one rejected attempt. By the final pass, so little remained permitted that the right sentence had become nearly the only one possible.

> **If you have enough constraints, the correct answer stops being something you invent and becomes something you discover.**

The observation that the constraints *were* the work belongs to **Esther Wow, Identity Muse** — [estherwow.com](https://estherwow.com).

Written up with Claude Code.

## License

MIT. Use it, fork it, ship it.
