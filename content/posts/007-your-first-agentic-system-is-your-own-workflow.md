---
title: "Your First Agentic System Is Your Own Workflow"
date: 2026-05-03T19:37:04-05:00
draft: false
slug: agentic-workflow
aliases:
  - /articles/your-first-agentic-system-is-your-own-workflow/
  - /posts/007-your-first-agentic-system-is-your-own-workflow/
---

Everyone wants autonomous agents.

The pressure is obvious.

Leadership hears that AI can write code, and some people immediately jump to the wrong conclusion:

Maybe **it** can just do the work.

Maybe the developers do not need to be as involved.

Maybe someone else can push the button, let the agent build the thing, and have engineering clean up whatever is left.

That sounds efficient only if you believe software development is mostly typing code.

It is not.

Typing code is the visible part. It is the part that looks easy to automate from the outside.

The hard part is deciding what should exist, how it should fit into the system, what tradeoffs are acceptable, what risks matter, and whether the result is actually good enough to own.

That judgment does not vanish because an agent can generate a diff.

It is also the wrong starting point.

Autonomous agents are not where agentic software development begins. They are what you build after the individual workflow is disciplined, repeatable, and safe enough to scale.

That is the part a lot of teams are skipping.

Not because the models are useless. They are not.

Not because agentic development is fake. It is very real.

The problem is simpler and more uncomfortable:

A lot of developers still cannot use a coding agent responsibly while sitting directly in front of it.

That does not always mean they are being lazy.

Some developers are still learning how to work with agents. They are learning when to provide more context, when to invoke a skill, when to stop the agent, when to challenge the output, and when to throw the output away.

That learning curve is real.

But it does not disappear because leadership wants autonomy.

And if someone cannot review one agent's output before opening a pull request, they are not ready to automate a fleet of agents.

## The Broken Individual Workflow

Agent-written code is not the problem.

That ship has sailed. Coding agents are already part of professional software development, and they are only going to become more capable. The question is not whether developers should use them.

The question is whether developers are operating them with enough discipline to trust the output.

That is where things start to break.

Sometimes the developer is careless.

Sometimes they are still learning the tool.

Sometimes they do not yet understand that using an agent well is its own engineering skill.

The result looks the same in code review.

The repo has skills, instructions, conventions, or workflow docs. The developer does not use them, or does not realize when the agent ignored them.

The agent produces code. The developer does not verify whether it followed the local patterns.

The build passes. The developer treats that as proof that the work is ready.

The pull request opens. The reviewer starts finding issues that should have been caught before the PR existed.

This is not only an agent failure.

It is an operator maturity problem.

The agent may have generated the code, but the developer operated the process. They chose the context. They chose the instructions. They chose when to stop. They chose whether to inspect the diff. They chose whether to run the checks. They chose whether the work was ready for review.

If that workflow is sloppy, the output will be sloppy.

The fact that an AI was involved does not make the process mature. It just makes the immaturity faster.

## The PR Is The Evidence

The pull request is where agentic workflow discipline becomes visible.

A bad AI-assisted PR has a very specific smell.

The code might compile. The happy path might work. The diff might even look plausible at first glance. But then the reviewer starts reading.

The implementation does not follow the repo's existing pattern.

The abstraction is in the wrong layer.

The naming is slightly off.

The error handling is shallow.

The test proves the function was called, not that the behavior is correct.

The agent added a helper that duplicates something already in the codebase.

The developer cannot clearly explain why the implementation was shaped that way.

None of these are exotic failures. They are normal code review problems. The difference is that agentic development can produce them faster, with more confidence, and with less emotional friction from the person posting the PR.

That last part matters.

When a developer writes code manually, there is usually some memory attached to the work. They remember the awkward tradeoff. They remember why a method was moved. They remember the test they almost wrote but did not. Even if the code is flawed, they have some relationship with the implementation.

With agent-generated code, that relationship can be missing.

The developer watched the output appear. They skimmed it. They saw green checks. They posted it.

Now the reviewer has to do two jobs.

They have to review the code.

And they have to reverse-engineer the work the developer failed to understand before asking for review.

That does not scale.

It just moves the cost downstream.

## The Responsibility Dodge

"The agent wrote it" is not a defense.

If the pull request has your name on it, the code is yours.

Agentic development changes how code is produced. It does not change ownership.

This is the line teams need to hold.

An agent is not a subcontractor you can blame in code review. It is not a junior developer assigned to your ticket. It is not a magical coworker who shares responsibility for the result.

It is a tool.

A powerful tool, but still a tool.

If you ask it to modify the codebase, you own what it does. If you accept its diff, you own the diff. If you open the PR, you own the PR.

That ownership includes the boring parts.

Did it follow the repo instructions?

Did it use the right skill?

Did it preserve the architectural boundary?

Did it add the right tests?

Did it handle the edge cases?

Did it solve the story without introducing a weird new pattern the team now has to live with?

Those questions do not disappear because the code arrived quickly.

They become more important because the code arrived quickly.

Speed is useful only when the quality system can absorb it. Otherwise, speed just becomes a faster way to create review burden.

## You Cannot Automate Discipline You Do Not Have

This is why the rush toward autonomous agents worries me.

Not because autonomous agents are impossible.

Not because they are bad.

Because autonomy is a scaling mechanism.

It scales whatever workflow already exists.

If the individual workflow is disciplined, autonomy can amplify good process. If the individual workflow is sloppy, autonomy will amplify slop.

That is not a model problem. That is a systems problem.

The right sequence is boring, which is usually a good sign.

First, learn to use agents responsibly as an individual.

Then make that workflow repeatable.

Then add deterministic gates and circuit breakers.

Then consider autonomy.

Most people want to skip straight to the last step because it sounds impressive. Autonomous backlog grooming. Autonomous implementation. Autonomous PR creation. Autonomous review loops. Agents handing work to agents while humans supervise from a dashboard.

Maybe we get there.

But if developers are still posting agent-written PRs they have not reviewed, the organization is not ready for that.

The first milestone is not a lights-out development pipeline.

The first milestone is a developer who can use an agent, inspect the result, verify it against the codebase, and own the work without making the reviewer clean up the process.

That is much less glamorous.

It is also the part that actually matters.

## What Responsible Agentic Development Looks Like

Responsible agentic development is not complicated.

It is just disciplined.

Before posting an agent-assisted PR, a developer should be able to say:

- I gave the agent the right context.
- I used the right skills or repo instructions.
- I verified the implementation followed local patterns.
- I reviewed the diff like I wrote it myself.
- I ran the relevant checks.
- I understand the implementation.
- I own the result.

That is the floor.

Not the advanced version. Not the enterprise agent platform. Not the "dark factory."

The floor.

If a developer cannot say those things honestly, the PR is not ready.

This does not mean every developer needs to become an AI researcher. It does not mean every task needs a ceremony. It does not mean agents should be wrapped in so much process that nobody wants to use them.

It means the developer remains responsible for the engineering outcome.

The agent can accelerate implementation. It can explore options. It can draft tests. It can find patterns. It can make tedious edits. It can save real time.

But it cannot replace the operator's judgment.

At least not honestly.

Not yet.

## Your Workflow Comes First

The first agentic system is not a company-wide platform.

It is not an autonomous SDLC.

It is not a squad of agents running through Jira while everyone watches velocity charts go vertical.

The first agentic system is your own workflow.

Context.

Constraints.

Execution.

Review.

Verification.

Ownership.

That is the system you need to make reliable first.

Once individuals can do that consistently, then team-level automation starts to make sense. You can encode the workflow. You can add hard gates. You can isolate work. You can define escalation paths. You can measure where the agent helps and where it creates risk.

But if the individual operator discipline is not there, automation will not fix it.

It will hide it for a while.

Then it will scale it.

And eventually, it will deliver the bill to code review.

Autonomous agents are not the first milestone. Responsible individual agent use is.

If developers are posting agent-written PRs they have not reviewed, the organization does not have an agent strategy.

It has a code quality problem with better branding.

---

I focus on my individual processes first. I review my own code. I use quality skills and deterministic git hooks for linting to find issues before someone else has to. I check whether the output fits the codebase, not just whether the agent says it is done. I stand behind every line of code in my pull requests. Not because I hand-wrote every character. Because I accepted the work, reviewed the work, and put my name on the PR.
