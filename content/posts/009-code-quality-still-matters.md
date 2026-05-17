---
title: "Code Quality Still Matters"
date: 2026-05-16T18:10:00-05:00
draft: false
slug: code-quality-still-matters
aliases:
  - /articles/good-code-still-matters-in-agentic-development/
  - /posts/009-good-code-still-matters-in-agentic-development/
---


Some people are starting to treat code quality as a legacy concern. The argument sounds practical:

If the agent can generate code, and the code does what the story asks for, why should anyone care about style, organization, naming, structure, maintainability, security, or complexity?

The feature works. The demo looks right.

Why does the code itself matter so much?

AI made code easier to produce. It did not make bad software cheaper to own.

## Functional Code Is The Floor

Functional code matters. It is required. But it is the minimum bar.

A junior developer is expected to produce code that runs. That does not mean the code is finished at a senior level.

People look at agent-generated code, see that it works, and treat that as the end of the evaluation. It is not.

"It works" tells you the code crossed the first gate. It does not tell you whether the team should want to live with it.

Working code can still be bad software. It can duplicate business logic, handle errors in the wrong layer, or add complexity that makes the next change harder.

Senior-quality software is code that is still safe to change long after it first works.

## Quality Was Never About Pretty Code

Good code was never about making code look pretty. Although my code is, obviously, incredibly beautiful to look at.

Good code is about keeping software understandable, changeable, reviewable, testable, debuggable, secure, and safe to extend. That is not an AI-era opinion. It is textbook software engineering.

Saying code quality no longer matters is like saying organization no longer matters because search exists.

That is not how professional work functions. Organization keeps work repeatable, inspectable, and recoverable.

We did not invent naming, structure, tests, and conventions because engineers wanted prettier diffs. We invented them because software spends most of its life being changed.

Messy code hides how the parts connect. It becomes hard to tell when a change in place A will affect place B. That is not just annoying. That is risk.

## Agents Amplify What Is Already There

If the existing code is poorly organized, poorly named, complex, and full of weak patterns, the agent is more likely to continue that direction.

If the existing code is organized, consistent, and built around clear quality standards, the agent has better patterns to extend.

Agents amplify the environment they are working in and the discipline of the person operating them. That is why knowledge and experience still matter.

This is the wrong moment to relax quality metrics. Agentic development is the best reason to make them stricter, more consistent, and more automatic. The point is not to slow agents down. It is to keep them from being slowed down later by rework, bug fixing, and cleanup caused by sloppy code.

Agentic development stresses simple code, clear boundaries, deterministic checks, review before acceptance, and code the developer can explain and stand behind.

The more complicated the code is, the less likely an agent is to make a change without introducing another issue.

Agents can refactor, review, find bugs, and improve code, but that does not make disorder free.

If the codebase becomes harder to understand, test, and change, the agent is operating in worse conditions. It has weaker examples, more misleading precedent, more accidental coupling, and more ways to make a good-looking change that breaks something important.

A change that looks right clears anyone who only checks whether it runs. It is stopped by someone who can still see the system-level risk.

## Entropy And Losing Control

Software does not naturally stay clean. Requirements change. Deadlines compress. Patterns drift. Exceptions accumulate. The fastest local fix becomes tomorrow's weird precedent.

Every system can tolerate some change risk. No system can tolerate a world where every change introduces another bug.

If each fix creates another failure, the team is no longer adding capability. They are chasing instability. The software may technically run, but it can no longer be safely changed.

That is the vicious cycle: sloppy code makes changes riskier, riskier changes introduce more issues, and the next change becomes riskier still.

Good software does not stay good by accident. It stays good because people keep pushing back against disorder.

Mean time to understanding is how long it takes someone to understand the relevant part of the system well enough to review or safely correct a change.

That cost is real. It shows up when a developer has to trace a confusing flow before fixing a bug or approve an agent-generated change without knowing whether it belongs in the system.

Agents can generate changes quickly. That does not remove the need for human control. The developer still needs to review the work, spot weak patterns, and decide whether the accepted result preserves the quality of the software.

Mean time to understanding is a control metric. When humans lose the ability to understand and review the work, the system starts depending on generated output without enough judgment to keep it from degrading.

That is not autonomy. That is losing control and calling it automation.

Hold the line.

## The Human Still Owns The Decision

Creating software with an agent does not make someone a senior software engineer. It makes software-shaped output easier to produce.

Agents are very much like junior developers in the way their output needs to be supervised. They can produce useful functional code that still needs review and correction before it is production quality.

The difference is accountability. A junior developer can learn, understand the business, and eventually own the work. An agent cannot.

Tools do not change that. Linters, formatters, type checkers, static analysis, security scanners, coverage tools, and complexity checks are useful because they are deterministic. They catch obvious issues before a human spends time looking for them, so reviewers can focus on the parts that actually require judgment.

AI reviewers are different. They can point out suspicious code, notice missing tests, question edge cases, compare a change against local patterns, and save time. But they are not deterministic. Sometimes they catch real issues. Sometimes they miss obvious ones. Sometimes they flag things that are not real.

That does not mean the tool is broken. It means the tool needs to be used appropriately. An AI reviewer can help you review. It cannot become the responsible engineer.

If someone treats functional output as the whole quality bar, they do not understand what it actually takes to own software. That is the line that matters when a business depends on the software working, changing safely, and continuing to support people's livelihoods.

The real danger is not that agents write ugly code. The real danger is that teams start accepting worse code because AI made code faster to produce.

Code is cheaper to generate. Software is not cheaper to own.

---

I use agents for leverage, but I do not lower the quality bar because the code was generated quickly. If the work is agent-driven, I expect the resulting code to be higher quality, not merely faster. The agent gives me more capacity to critique, test, simplify, verify, and improve the work before I accept it. If the code lands under my name, I own it. That means I own more than whether it runs. I own whether it belongs.
