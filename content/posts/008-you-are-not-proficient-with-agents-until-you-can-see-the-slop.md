---
title: "You Are Not Proficient With Agents Until You Can See the Slop"
date: 2026-05-08T16:30:00-05:00
draft: false
slug: see-the-slop
aliases:
  - /articles/you-are-not-proficient-with-agents-until-you-can-see-the-slop/
  - /posts/008-you-are-not-proficient-with-agents-until-you-can-see-the-slop/
---

There is a phase almost every developer hits when they first start using serious AI coding tools.

The agent writes code quickly.

The output looks complete.

The explanation sounds confident.

The demo may even work.

And for a while, the natural reaction is simple:  This is awesome!

That reaction is not wrong. These tools are useful. They can generate scaffolding, find APIs, explain unfamiliar code, write tests, chase errors, and produce working software faster than most developers expected a few years ago.

But there is a difference between useful output and good software.

That difference is where agentic coding proficiency begins.

## AI Did Not Make Everyone A Senior Engineer

AI has not made everyone who can type English equivalent to a senior software engineer.

It has made software-shaped output easier to produce.

Those are not the same thing.

A prompt box does not erase the value of years spent learning computer science, software engineering, production systems, debugging, design, testing, maintainability, and operational failure. It does not replace the judgment that comes from watching systems break in production, tracing bad abstractions through a codebase, or learning why a "small shortcut" became expensive six months later.

This is not about gatekeeping who is allowed to use AI.

Everyone should use the tools.

But we should be honest about what the tools produce.

A person can now create something that looks like an app much faster than before. That can be impressive. It can be useful. It can be the start of something real.

But creating something that looks like software is not the same thing as professional software engineering.

A toddler drawing can be impressive for a toddler. You can put it on the fridge. You can praise the progress. You can mean it.

But you should not confuse it with the regular output of a professional designer.

The point is not to insult beginners. The point is to separate artifact creation from professional judgment.

AI makes artifacts easier to create. It does not automatically give the operator professional judgment.

## Phase 1: This Is Awesome

Phase 1 is the honeymoon phase.

The agent produces a lot of code fast. It wires up boilerplate. It finds APIs. It writes tests. It explains errors. It moves through unfamiliar files with surprising confidence.

The developer gets real lift.

The code often compiles. The happy path often works. The agent may even produce better first-pass code than the developer expected.

This is the moment where people start to believe the tool is further along than it is.

The output is polished enough to lower skepticism. The comments sound reasonable. The test names look legitimate. The implementation has structure. The agent explains what it did in a way that sounds careful and complete.

For a developer who already knows what good looks like, this phase is exciting but temporary.

For a developer who does not know what good looks like, this phase can become a trap.

They keep seeing volume, confidence, and apparent completeness as proof of quality.

They do not yet see the slop.

## Phase 2: A Senior Developer Starts Seeing The Gaps

Phase 2 is where experienced developers separate themselves.

A good senior developer can look at agent output and recognize that something is off even when the code compiles.

They are not only asking:

- Does it build?
- Does the demo work?
- Did the agent say it is done?

They are asking different questions.

- Does this fit the system?
- Is this the abstraction this codebase would normally use?
- Did it copy a nearby pattern without understanding why that pattern exists?
- Is the test proving behavior, or just proving the implementation?
- Did it handle the edge case that actually matters?
- Is this solving the real problem, or a nearby problem that sounds similar?

This phase can feel disappointing.

At first, the agent looked like it was producing clean work. Then you start noticing that some of the work is shallow. Some of it is overbuilt. Some of it is underbuilt. Some of it follows the shape of the codebase without understanding the reason behind the shape.

That disappointment is progress.

It means your eye is getting sharper.

It means you are no longer impressed only by speed.

It means you are learning to see the slop before it escapes into the normal quality process.

## What AI Slop Actually Looks Like

AI slop is not simply "agent-written code."

Agent-written code can be useful, correct, and production-worthy after review and adjustment. Agents can also help review and adjust their own work or another agent's work. The next correction does not always need to come directly from human hands.

That is not the issue.

The issue is whether the developer can recognize what needs correction and judge whether the result is acceptable.

AI slop is plausible output that has not been reconciled with the real system.

It creates a new helper instead of using the existing one.

It adds an abstraction because the pattern looks elegant, not because the system needs it.

It implements the happy path and misses the business rule.

It writes shallow tests that mirror the implementation instead of proving behavior.

It names things generically because it does not understand the domain.

It handles errors in a way that does not match the rest of the application.

It builds a local solution that is systemically wrong.

That last one matters.

A lot of AI slop is locally coherent and systemically wrong.

If you only inspect the local change, it looks fine. If you inspect the change against the surrounding system, the weakness becomes obvious.

That is why experience still matters.

## Good Code Still Matters

A common reaction is: if the agent wrote the code and the code does what it is supposed to do, why should anyone care what the code looks like?

That sounds practical until the next change arrives.

Software is rarely written once and left alone.

It is read, modified, debugged, extended, tested, rolled back, monitored, reviewed, and explained.

Code quality still matters because future work happens inside the code that exists today.

Style, organization, naming, and structure are not vanity concerns. They are how teams preserve the ability to change the system safely.

Bad code creates downstream cost even when the first behavior appears correct.

It makes the next agent run worse because the codebase now contains weaker examples.

It makes the next human review harder because intent is less clear.

It makes debugging slower because responsibility is scattered.

It makes future changes riskier because the system has one more strange local exception.

Agents do not remove the need for maintainable code.

They make maintainability more important because they can produce more code faster.

## Phase 3: This Is Still Valuable, But I Know Where To Look

Phase 3 is proficiency.

It is not cynicism about agents.

It is not pretending the tools are useless.

It is continuing to get the lift while knowing where the risk lives.

The Phase 3 developer no longer treats the first plausible answer as automatically finished. They expect the work to move through review, critique, revision, simplification, testing, and verification.

Some of that work may be done directly by the developer.

Some of it may be delegated back to the same agent.

Some of it may be routed through another agent acting as reviewer.

That is fine.

Agentic development does not require the human to manually type every correction. That would miss the point of the tool.

But the human still needs to know what to ask for, what to inspect, and when the result is actually good enough.

The final 10-20 percent is often where engineering judgment matters most.

That is where you check architecture fit.

That is where you compare the solution to local patterns.

That is where you tighten names.

That is where you inspect test quality.

That is where you check edge cases.

That is where you evaluate failure modes.

That is where you verify product behavior.

That is where deterministic checks stop being optional.

Phase 3 developers still use agents aggressively.

They just do not confuse speed with completion.

## The Real Proficiency Test

The question is not whether a developer can get an agent to generate code.

Almost anyone can do that now.

The question is whether the developer can tell when the output is wrong, shallow, generic, overbuilt, underbuilt, or misaligned with the codebase.

In an AI-assisted world, the scarce skill shifts from typing code to evaluating code.

That does not mean coding skill stops mattering.

It means coding skill shows up differently.

It shows up in the context you give the agent.

It shows up in the review loops you create.

It shows up in the parts of the diff that bother you before you can fully explain why.

It shows up when you delete clever code because the simple version fits better.

It shows up when you know the agent solved the wrong problem, even though the answer looked polished.

Senior judgment still matters because software quality is not the same as text generation.

The stronger the agent gets, the more important it becomes to know what good software looks like.

## Get To Phase 3

Phase 1 is normal.

Phase 2 is uncomfortable.

Phase 3 is proficiency.

The goal is not to stop using agents. The goal is to become the kind of developer who can use them without being fooled by them.

Once you can see the slop, you can remove it yourself, send the agent back after it, or route it through another review loop.

Until then, you are not proficient with agents.

You are impressed by them.

AI slop is not the failure.

Failing to see it is.

---

I use agents for leverage, not authority. I expect useful lift from them, and I am comfortable using agents to critique, revise, and harden their own output. But I still inspect the result, check the fit, run the deterministic gates, and apply engineering judgment before I accept the work. The agent can produce code quickly. The agent can even help review it. I still own the decision that the result is good enough.
