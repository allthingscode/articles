---
title: "Code Quality Still Matters"
date: 2026-05-16T18:10:00-05:00
draft: false
slug: code-quality-still-matters
aliases:
  - /articles/good-code-still-matters-in-agentic-development/
  - /posts/009-good-code-still-matters-in-agentic-development/
---


Some people are starting to treat code quality as a legacy concern.

The argument sounds practical:

If the agent can generate code, and the code does what the story asks for, why should anyone care about style, organization, naming, structure, maintainability, security, or complexity?

The feature works.

The tests pass.

The demo looks right.

Why does the code itself matter so much?

That sounds reasonable only if you misunderstand why those standards existed in the first place.

Good code was never about making code look pretty.

Although my code is, obviously, incredibly beautiful to look at.

The real point was never visual appeal.

Good code is about keeping software understandable, changeable, reviewable, testable, debuggable, secure, and safe to extend.

That is not an AI-era opinion.

That is textbook software engineering.

Software quality has always included more than whether the program produces the expected output once. Reliability, maintainability, security, testability, modularity, and changeability have been part of the discipline for decades.

Those concerns do not disappear in agentic development.

They become more important because agents can create more code, faster, with more confidence, and with less friction.

AI made code easier to produce.

It did not make bad software cheaper to own.

## Functional Code Is The Floor

Functional code matters.

It is required.

But it is the minimum bar.

A junior developer is expected to produce code that runs. That does not mean the code is finished at a senior level.

This is where the misconception starts.

People look at agent-generated code, see that it works, and treat that as the end of the evaluation.

It is not.

"It works" tells you the code crossed the first gate.

It does not tell you whether the team should want to live with it.

Working code can still be bad software.

It can duplicate business logic from another layer.

It can handle errors in a way that does not match the rest of the system.

It can hide the real domain concept behind generic names.

It can add complexity that makes the next change harder.

Functional code is the floor.

Senior-quality software is functional code that remains understandable, maintainable, testable, secure, and safe to change.

Agentic development does not lower that bar.

If anything, it should raise it.

## Quality Was Never About Pretty Code

Saying code quality no longer matters is like saying organization no longer matters because search exists.

It is like saying document structure no longer matters because someone can ask an AI to summarize the folder later.

That is not how professional work functions.

Organization is not decoration.

Organization is what keeps work repeatable, inspectable, and recoverable.

Software is no different.

We did not invent naming, structure, tests, and conventions because engineers wanted prettier diffs.

We invented them because software spends most of its life being changed.

Naming communicates intent.

Consistency keeps local patterns predictable.

Tests protect behavior from accidental regression.

Small functions and modules reduce blast radius.

Clear boundaries prevent one feature from leaking into the whole system.

Low coupling and high cohesion are not fancy academic phrases.

They are how you keep one change from accidentally dragging half the system behind it.

Information hiding is not theory for theory's sake.

It is how you keep implementation details from leaking everywhere and turning every future change into a scavenger hunt.

Messy code hides how the parts connect.

It becomes hard to tell when a change in place A will affect place B.

That is not just annoying.

That is risk.

Agents do not remove that risk.

They operate inside it.

## Agentic Development Raises The Cost Of Ignoring Quality

Agentic development does not replace existing software quality standards.

It raises the cost of ignoring them.

This is the wrong moment to relax quality metrics.

Some people want to treat them as legacy friction because agents can produce code quickly.

That gets the tradeoff backwards.

Agentic development is the best reason to make quality metrics stricter, more consistent, and more automatic.

The point is not to slow agents down.

The point is to prevent agentic development from being slowed down later by rework, bug fixing, and cleanup caused by sloppy code.

Good agentic development still depends on correctness, maintainability, security, meaningful tests, clean structure, useful names, and low risk of breaking existing behavior.

But agentic development stresses a few quality dimensions even harder.

The code needs to be simple enough for humans to understand and agents to change safely.

The relationships between components need to be visible.

The structure needs to give agents strong local examples and clear boundaries.

The deterministic checks need to catch mechanical issues before a human looks.

The review process needs to catch issues before the first good-looking answer gets accepted.

The developer needs to be able to explain the code and stand behind it.

Verification and validation still matter.

You still need to check that the software was built correctly and that the right thing was built.

An agent-generated diff does not retire either responsibility.

Complexity deserves special attention.

The more complicated the code is, the less likely an agent is to make a change without introducing another issue.

This is true for humans too, but agents make it easier to underestimate the risk because they can produce a plausible diff quickly.

Complexity is risk.

Agentic development does not repeal that.

It just makes the risk easier to produce at speed.

## Entropy Is The Default

Software does not naturally stay clean.

Requirements change. Deadlines compress. Patterns drift. Exceptions accumulate.

The fastest local fix becomes tomorrow's weird precedent.

That is entropy in practical engineering terms.

Order does not preserve itself.

It takes knowledge and experience to keep a codebase understandable and functional over time.

It takes people who can recognize when a shortcut is harmless and when it is structural damage.

Every system can tolerate some change risk.

No system can tolerate a world where every change introduces another bug.

If each fix creates another failure, the team is no longer adding capability.

They are chasing instability.

The software may technically run, but it is no longer reliably functional.

It cannot easily be made functional because every repair risks breaking another part of the system.

That is the vicious cycle.

Sloppy code makes changes riskier.

Riskier changes introduce more issues.

Those issues further degrade the software.

The degraded software becomes harder to understand.

The next change becomes even riskier.

Good software does not stay good by accident.

It stays good because people keep pushing back against disorder.

Hold the line.

## Mean Time To Understanding Is A Control Metric

Entropy explains why a codebase degrades.

Mean time to understanding decides whether anyone can catch it before it does.

Mean time to understanding is how long it takes someone to understand the relevant part of the system well enough to review a change, challenge it, guide it, or safely correct it.

That cost is real.

It shows up when a developer has to trace a confusing flow before fixing a bug.

It shows up when a reviewer has to reverse-engineer the intent of a pull request.

It shows up when a developer is expected to approve an agent-generated change but cannot quickly determine whether the change actually belongs in the system.

Agents can generate changes quickly.

That does not remove the need for human control.

The developer still needs to review the work, spot weak patterns, challenge shallow reasoning, and decide whether the accepted result preserves the quality of the software.

Clear names, clean boundaries, predictable organization, and consistent patterns make that control possible.

Messy code makes it harder for humans to apply judgment before the damage compounds.

Mean time to understanding is not just a productivity metric.

It is a control metric.

When humans lose the ability to understand and review the work, the system starts depending on generated output without enough judgment to keep it from degrading.

That is not autonomy.

That is just avoiding ownership and calling it automation.

## Agents Amplify What Is Already There

Agents infer and imitate patterns from the codebase in front of them.

They amplify what is already there.

If the existing code is poorly organized, poorly named, complex, and full of weak patterns, the agent is more likely to continue that direction.

If the existing code is organized, consistent, and built around clear quality standards, the agent has better patterns to extend.

That is why knowledge and experience still matter.

Agents amplify the environment they are working in and the discipline of the person operating them.

This is where the "AI can just fix it later" argument breaks down.

Agents can refactor, review, find bugs, and improve code they or another agent wrote.

But that does not make disorder free.

If the codebase becomes harder to understand, harder to test, and harder to change, the agent is operating in worse conditions.

It has weaker examples.

It has more misleading local precedent.

It has more accidental coupling to preserve.

It has more hidden relationships where a change in one place quietly affects behavior somewhere else.

It has more ways to make a plausible change that breaks something important.

Plausible is the whole problem.

A change that looks right clears anyone who only checks whether it runs.

It is stopped by someone who can still see what the system was supposed to be.

Readable code matters to both humans and agents, but for different reasons.

Humans need it to review the work, judge it, and take responsibility for it.

Agents need it to copy the right patterns, stay inside the right boundaries, and avoid following misleading examples.

That is valuable whether the next change is made by a human, an agent, or both.

## Agent Output Needs Experienced Oversight

People who have maintained production systems usually do not need much convincing here.

They have seen what happens when teams accept code that only works locally.

They have fixed the "small shortcut" six months later.

They have chased bugs through poorly named, poorly organized code.

They have watched one careless pattern turn into a convention because the next person copied what was already there.

They are not defending tradition for its own sake.

They are recognizing the maintenance cost before it arrives.

Creating software with an agent does not make someone a senior software engineer.

It makes software-shaped output easier to produce.

Those are not the same thing.

Agents are very much like junior developers in the way their output needs to be supervised.

They can produce useful functional code.

They can also produce code that needs review, correction, simplification, and guidance before it is production quality.

The difference is not the oversight pattern.

The difference is accountability.

A junior developer can learn, grow, understand the business, and eventually own the work.

An agent cannot carry that responsibility.

If someone treats functional output as the whole quality bar, they do not understand what it actually takes to own software.

That might sound harsh.

It is also the line that matters when a business depends on the software working, changing safely, and continuing to support people's livelihoods.

Experienced software engineers matter more, not less, in that world.

The cost of skipping experienced oversight rarely lands on whoever skipped it.

It lands later, on whoever has to keep the system working.

## Tools Help. They Do Not Own The Decision.

These quality measures and controls are not new.

We already have software tools that help measure and enforce parts of code quality:

- linters
- formatters
- type checkers
- static analysis
- dependency scanners
- security scanners
- test coverage tools
- complexity analysis
- duplication detection

These tools are useful because they are deterministic.

They catch obvious issues before a human has to spend time looking for them.

That is the point.

They do not replace experienced judgment.

They remove waste from the review process so experienced engineers can spend attention on the parts that actually require judgment.

A linter is not an experienced engineer.

It is a deterministic check that keeps experienced reviewers from wasting attention on problems a machine can catch reliably.

AI reviewers are different.

An AI reviewer can be useful.

It can point out suspicious code, notice missing tests, question edge cases, compare a change against local patterns, and save time.

But it is not deterministic.

It is subjective.

It is hit or miss.

Sometimes it catches real issues.

Sometimes it misses obvious issues.

Sometimes it flags things that are not real.

That does not mean the AI reviewer is broken.

That is the nature of the tool.

The mistake is believing you can tweak it until it becomes something you never need to check.

That is the fallacy.

An AI reviewer can help you review.

It cannot become the responsible engineer.

The right use of an AI reviewer is not blind trust.

The right use is better leverage for the human who still owns the decision.

## Do Not Accept Worse Code

The real danger is not that agents write ugly code.

The real danger is that teams start accepting worse code because AI made code faster to produce.

Code is cheaper to generate.

Software is not cheaper to own.

Functionality still matters.

But it was never the whole definition of quality.

The code still needs to fit the system.

The tests still need to prove behavior.

The names still need to carry meaning.

The structure still needs to support change.

The complexity still needs to stay controlled.

The deterministic checks still need to run.

The AI reviewer can help, but it cannot own the decision.

The developer still needs to own the result.

Agents can accelerate development.

They cannot make bad software cheap to maintain.

---

I use agents for leverage, but I do not lower the quality bar because the code was generated quickly. If the work is agent-driven, I expect the resulting code to be higher quality, not merely faster. The agent gives me more capacity to critique, test, simplify, verify, and improve the work before I accept it. If the code lands under my name, I own it. That means I own more than whether it runs. I own whether it belongs.
