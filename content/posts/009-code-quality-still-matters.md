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

AI made code easier to produce.

It did not make bad software cheaper to own.

## Functional Code Is The Floor

Functional code matters.

It is required.

But it is the minimum bar.

A junior developer is expected to produce code that runs. That does not mean the code is finished at a senior level.

People look at agent-generated code, see that it works, and treat that as the end of the evaluation.

It is not.

"It works" tells you the code crossed the first gate.

It does not tell you whether the team should want to live with it.

Working code can still be bad software. It can:

- duplicate business logic from another layer
- handle errors in a way that does not match the rest of the system
- hide the real domain concept behind generic names
- add complexity that makes the next change harder

Senior-quality software is code that is still safe to change long after it first works.

## Quality Was Never About Pretty Code

Good code was never about making code look pretty.

Although my code is, obviously, incredibly beautiful to look at.

Good code is about keeping software understandable, changeable, reviewable, testable, debuggable, secure, and safe to extend.

That is not an AI-era opinion. It is textbook software engineering. Software quality has always meant more than whether the program produces the expected output once, and these standards have been part of the discipline for decades.

Saying code quality no longer matters is like saying organization no longer matters because search exists.

It is like saying document structure no longer matters because someone can ask an AI to summarize the folder later.

That is not how professional work functions.

Organization is not decoration.

Organization is what keeps work repeatable, inspectable, and recoverable.

Software is no different.

We did not invent naming, structure, tests, and conventions because engineers wanted prettier diffs.

We invented them because software spends most of its life being changed.

- Naming communicates intent.
- Consistency keeps local patterns predictable.
- Tests protect behavior from accidental regression.
- Small functions and modules reduce blast radius.
- Clear boundaries prevent one feature from leaking into the whole system.

Low coupling and high cohesion are not fancy academic phrases.

They are how you keep one change from accidentally dragging half the system behind it.

Messy code hides how the parts connect.

It becomes hard to tell when a change in place A will affect place B.

That is not just annoying.

That is risk.

## Agents Amplify, So Quality Costs More To Ignore

Agents do not remove that risk.

They operate inside it.

Agents infer and imitate patterns from the codebase in front of them.

If the existing code is poorly organized, poorly named, complex, and full of weak patterns, the agent is more likely to continue that direction.

If the existing code is organized, consistent, and built around clear quality standards, the agent has better patterns to extend.

That is why knowledge and experience still matter.

Agents amplify the environment they are working in and the discipline of the person operating them.

Agentic development does not replace existing quality standards. It raises the cost of ignoring them.

This is the wrong moment to relax quality metrics. Treating them as legacy friction because agents are fast gets the tradeoff backwards. Agentic development is the best reason to make those metrics stricter, more consistent, and more automatic. The point is not to slow agents down. It is to keep them from being slowed down later by rework, bug fixing, and cleanup caused by sloppy code.

The dimensions agentic development stresses hardest:

- code simple enough for humans to understand and agents to change safely
- visible relationships between components
- structure that gives agents strong local examples and clear boundaries
- deterministic checks that catch mechanical issues before a human looks
- a review process that catches issues before the first good-looking answer is accepted
- code the developer can explain and stand behind

Verification and validation still matter.

You still need to check that the software was built correctly and that the right thing was built.

An agent-generated diff does not retire either responsibility.

The more complicated the code is, the less likely an agent is to make a change without introducing another issue.

This is true for humans too, but agents make it easier to underestimate the risk because they can produce a plausible diff quickly.

This is where the "AI can just fix it later" argument breaks down.

Agents can refactor, review, find bugs, and improve code they or another agent wrote.

But that does not make disorder free.

If the codebase becomes harder to understand, test, and change, the agent is operating in worse conditions:

- weaker examples
- more misleading local precedent
- more accidental coupling to preserve
- more hidden relationships where a change in one place quietly affects behavior somewhere else
- more ways to make a plausible change that breaks something important

Plausible is the whole problem.

A change that looks right clears anyone who only checks whether it runs.

It is stopped by someone who can still see what the system was supposed to be.

Readable code matters to both humans and agents, but for different reasons.

Humans need it to review the work, judge it, and take responsibility for it.

Agents need it to copy the right patterns, stay inside the right boundaries, and avoid following misleading examples.

## Entropy And Losing Control

Software does not naturally stay clean.

Requirements change. Deadlines compress. Patterns drift. Exceptions accumulate.

The fastest local fix becomes tomorrow's weird precedent.

That is entropy in practical engineering terms.

Order does not preserve itself.

It takes knowledge and experience to keep a codebase understandable and functional over time.

It takes people who can recognize when a shortcut is harmless and when it is structural damage.

Every system can tolerate some change risk.

No system can tolerate a world where every change introduces another bug.

If each fix creates another failure, the team is no longer adding capability. They are chasing instability. The software may technically run, but it can no longer be safely changed, because every repair risks breaking something else.

That is the vicious cycle: sloppy code makes changes riskier, riskier changes introduce more issues, those issues degrade the software further, and the next change becomes riskier still.

Good software does not stay good by accident.

It stays good because people keep pushing back against disorder.

Pushing back depends on being able to understand the system fast enough to act.

Mean time to understanding is how long it takes someone to understand the relevant part of the system well enough to review a change, challenge it, guide it, or safely correct it.

That cost is real. It shows up when a developer has to trace a confusing flow before fixing a bug, when a reviewer has to reverse-engineer the intent of a pull request, or when someone is asked to approve an agent-generated change but cannot quickly tell whether it belongs in the system.

Agents can generate changes quickly.

That does not remove the need for human control.

The developer still needs to review the work, spot weak patterns, challenge shallow reasoning, and decide whether the accepted result preserves the quality of the software.

Clear names, clean boundaries, predictable organization, and consistent patterns make that control possible.

Messy code makes it harder for humans to apply judgment before the damage compounds.

Mean time to understanding is not just a productivity metric.

It is a control metric.

When humans lose the ability to understand and review the work, the system starts depending on generated output without enough judgment to keep it from degrading.

That is not autonomy.

That is just losing control and calling it automation.

Hold the line.

## The Human Still Owns The Decision

People who have maintained production systems usually do not need much convincing here.

They have fixed the "small shortcut" six months later.

They have watched one careless pattern turn into a convention because the next person copied what was already there.

They are not defending tradition for its own sake.

They are recognizing the maintenance cost before it arrives.

Creating software with an agent does not make someone a senior software engineer. It makes software-shaped output easier to produce.

Agents are very much like junior developers in the way their output needs to be supervised.

They can produce useful functional code.

They can also produce code that needs review, correction, simplification, and guidance before it is production quality.

The difference is not the oversight pattern.

The difference is accountability.

A junior developer can learn, grow, understand the business, and eventually own the work.

An agent cannot carry that responsibility.

Tools do not change that.

We already have software tools that measure and enforce parts of code quality:

- linters
- formatters
- type checkers
- static analysis
- dependency scanners
- security scanners
- test coverage tools
- complexity analysis
- duplication detection

These tools are useful because they are deterministic. They catch obvious issues before a human has to spend time looking for them, so experienced engineers can spend attention on the parts that actually require judgment.

A linter is not an experienced engineer. It is a deterministic check that reliably catches a narrow class of problems, and nothing more.

AI reviewers are different. An AI reviewer can point out suspicious code, notice missing tests, question edge cases, compare a change against local patterns, and save time. But it is not deterministic. It is subjective and hit or miss: sometimes it catches real issues, sometimes it misses obvious ones, sometimes it flags things that are not real.

That does not mean it is broken. That is the nature of the tool. The mistake is believing you can tweak it until it becomes something you never need to check.

An AI reviewer can help you review. It cannot become the responsible engineer.

If someone treats functional output as the whole quality bar, they do not understand what it actually takes to own software.

That might sound harsh.

It is also the line that matters when a business depends on the software working, changing safely, and continuing to support people's livelihoods.

The cost of skipping experienced oversight rarely lands on whoever skipped it.

It lands later, on whoever has to keep the system working.

The real danger is not that agents write ugly code.

The real danger is that teams start accepting worse code because AI made code faster to produce.

Code is cheaper to generate. Software is not cheaper to own.

---

I use agents for leverage, but I do not lower the quality bar because the code was generated quickly. If the work is agent-driven, I expect the resulting code to be higher quality, not merely faster. The agent gives me more capacity to critique, test, simplify, verify, and improve the work before I accept it. If the code lands under my name, I own it. That means I own more than whether it runs. I own whether it belongs.
