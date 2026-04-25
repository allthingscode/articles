---
title: "You Found Markdown. You Are Not Ready for a Dark Factory."
date: 2026-04-24T15:00:00-05:00
draft: false
---

A "dark factory" is a manufacturing term: a fully automated production floor where no humans are needed on-site. No lights required. The machines run themselves.

In software development, the equivalent dream is agents shipping code while you sleep: no intervention, no oversight, full velocity.
That dream is worth chasing, but there's a long road between where most developers are and where that road actually starts.

## 1. The Skill Collection Trap

It starts innocently enough.

You write one skill - maybe a standup notes formatter or a PR description generator. It works. The dopamine hits. You write another.

Then you discover that skills can call other skills. Suddenly you're not just writing skills; you're wiring them together. You have a "workflow." You have a *pipeline*. The markdown files multiply. Each one hands off to the next. It starts to look like something.

You step back, squint at it, and think: *I'm building a factory.*

You're not. Not yet. What you have is a collection of markdown files politely asking other markdown files to do things. That's a very different thing - and that's exactly where productivity quietly bleeds out.

## 2. The Workflow Illusion

Here's the distinction that matters: **a real pipeline enforces its process. A markdown workflow just describes one.**

When you have a CI/CD pipeline with hard gates, a failing test doesn't "suggest" that the build should stop. It stops the build. The checkpoint isn't a recommendation - it's a wall.

When your "workflow" is a chain of markdown files, the checkpoints are prompts.
They ask the agent to verify something, and they instruct it to stop if quality is not met.
But there is nothing mechanical behind that instruction, and the agent can - and will - interpret those instructions differently every single time it runs.

Describing a process in a file is not the same as implementing one.
That feels subtle until your pipeline silently produces garbage output and nothing - not a single gate - raises a flag.
It just keeps going, and nobody stops it.

## 3. The Slot Machine Problem

I didn't learn this from a blog post. I built one of these systems myself and ran it long enough to understand what it really was.

The best way I can describe what happened: **it never worked the same way twice, and it never failed the same way twice.**

That's not a bug you can fix. That's the architecture telling you something.

Every step in the pipeline was probabilistic.
The agent writing the spec interpreted the input slightly differently on each run.
The agent building from the spec made slightly different assumptions.
Three or four steps deep, the accumulated drift from a dozen small probabilistic decisions compounded into output that only loosely resembled what you asked for.

And here's what makes it genuinely hard to diagnose: when a deterministic system breaks, it breaks at a specific point in a reproducible way.
When a probabilistic pipeline degrades, it degrades everywhere and nowhere at once.
You cannot point to a single failure. You can only point at the mess.

Scaling this doesn't make it reliable. It makes the chaos harder to trace.

## 4. Infinite Loops - How to Light Money on Fire

This is where a lot of people first watch the wheels come off: the review step. But infinite loops aren't just a review problem. They can happen anywhere in the pipeline.

Without proper circuit breakers and exception handling throughout your workflow, you will eventually hit this: an agent gets stuck.
It doesn't fail loudly. It doesn't throw an error you can catch.
It just keeps trying - generating output, evaluating it, deciding it's not good enough, then generating more output and evaluating again.
Round and round.

Meanwhile, the token meter is running.

You come back an hour later to a pile of nothing - and no tokens left to show for it.

The review loop is the most expensive version of this because the problem is structural.
If you're using AI to review AI output, you have a probabilistic system judging a probabilistic system.
One run says the code is fine.
The next run - same code, same prompt - finds three things wrong.
Fix those three things and run it again, and it finds two different things wrong.

There is no resolution state. The loop will run until you run out of patience, budget, or both.

**What deterministic tools actually give you** is a real floor: linting, static analysis, syntax checks. These are binary - the code passes or it doesn't. They don't negotiate. Use them as your first gate and treat failure there as a hard stop.

But understand what they cannot do.
They catch the obvious, and they find code that is demonstrably, mechanically wrong.
They cannot tell you whether the implementation fits how the codebase is meant to evolve: long-term direction, unspoken conventions, and architectural intent that no spec fully captures.

**That judgment requires a human.** The person who understands the codebase, wrote the spec, and knows what "done" actually looks like. That person saying "yes, this is good" is not a gap in your system - right now, that person **IS THE SYSTEM**!

Circuit breakers are not optional features to add later.
If your pipeline does not have hard limits on retries, a defined escalation path when something goes sideways, and a human-paged fallback, then you do not have a pipeline.
You have a process that will spend your money in circles until something external stops it.

## 5. Where the Industry Really Is

I want to be careful here, because this is not a claim that autonomous development pipelines can't be built.

Google is working on this with Gemini. OpenAI is working on it with Codex. Anthropic is working on it with Claude Code. Serious people with serious resources are taking this seriously, and some of them may have solved pieces of it already.

What they are building is infrastructure: real state management, deterministic orchestration layers, reliable agent handoffs, and evaluation frameworks that actually converge.
That work is hard, and it is not finished in a form that makes it safe to assume you can replicate it with markdown files on a weekend.

At the framework level, tools like LangChain and CrewAI are giving developers real building blocks for multi-agent orchestration. These are serious projects doing serious work.

There is a significant gap between "I have a workflow" and "I have a system." That gap is exactly the infrastructure those companies are still perfecting.

Seeing the surface layer - skills calling skills, markdown orchestrating agents - and concluding that you can scale it into a full autonomous SDLC is like watching Formula 1 and deciding four wheels and an engine are enough.

## 6. What It Really Takes

I eventually got my own system to a place where it works reliably. Here's what it required.

Not better prompts. **Deterministic code.**

Real checkpoints: not instructions to verify, but gates that mechanically cannot be passed without meeting a condition.
Phase-based development (Research -> Spec -> Build -> Review -> Merge), enforced as structure rather than suggested as a guideline.
Hard circuit breakers that stop the process, escalate to a human, and do not retry indefinitely.

The human judgment layer stayed. It will stay until there are tools reliable enough to replace it honestly. That is not a design flaw. That is engineering honesty about the current state of the technology.

The developers who will build reliable agentic systems are the ones who treat the probabilistic layer as what it is: a powerful tool used where it excels, paired with the right tools for everything else.

---

*The markdown files are not the factory. They're the wishlist. The factory is everything underneath them that you haven't built yet - the checkpoints that can't be argued with, the gates that don't negotiate, and the human who reads the output and says "yes" or "no" without asking the AI what it thinks.*

*Build that first. Then we'll talk about lights-out.*


