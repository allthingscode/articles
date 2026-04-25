---
title: "English Is Not Code: Why Coding Agents Behave Like Slot Machines"
date: 2026-04-20T09:00:00-05:00
draft: false
slug: english-is-not-code
aliases:
  - /posts/001-english-is-not-code/
---

## 1. The Core Claim

Let's be clear: **English is not code. Markdown is not code. Your prompt is not a command; it's a request.**

There's a seductive half-truth circulating in engineering circles right now: "English is the hottest new programming language."
It's a great keynote line, but in practice, it's a dangerous delusion.

When you write PHP, Go, Rust, or Python, you're working with a deterministic contract.
The compiler or interpreter does not "vibe" with your intent; it enforces strict, repeatable rules.

Treating a prompt like a contract isn't engineering. It's gambling.

We need to stop pretending natural language has the formal semantics required to build reliable systems.
It doesn't.

Until we acknowledge that, we're automating unreviewable technical debt.

## 2. The Probabilistic Reality

Traditional software is built on the promise of determinism.
In a deterministic system, the same input always produces the same output.

Whether it's a React component or an SQL query, we expect code to give us the same results, for the same input, with no variation whatsoever.
LLMs don't work that way.

An LLM is a prediction engine designed to guess the next likely word.
It is not executing logic. It is calculating the highest-probability continuation based on its training data.
Every response is a statistical "best guess" based on what came before it.

Even at "Temperature 0," you aren't guaranteed identical results every time.
Unpredictability is baked into the stack itself. Tiny differences in how hardware executes math can produce different answers to the same prompt.

In engineering, "mostly correct" is just another way of saying "unpredictably broken."
If your code works 99% of the time, that 1% failure isn't a quirk - it's a production incident.

Real engineering eliminates edge cases. Rolling the dice is gambling.

## 3. The Vibe Coding Trap

There is a big difference between a prototype that "looks right" and a system that "is right."
This is what I call the "Vibe Coding" trap.

English is amazing at describing high-level intent.
It's terrible at defining low-level implementation.

"Make the button look nice" is an instruction that relies on a thousand shared assumptions.
`background-color: #3498db` is an absolute command.

In a "vibe-driven" workflow, you're constantly fighting semantic ambiguity.
As your conversation grows, the "context rot" sets in - earlier constraints are forgotten as newer ones take their place.

If your development process is just hitting "Y" on agent suggestions, you aren't reviewing code; you're just projecting your own intent onto it.
By the time you realize the "vibe" was wrong, the bug is already in production.

## 4. The Deterministic Cage

Stop wasting time trying to make the AI deterministic. Instead, build a "deterministic cage" around it.

I solved this by architecting a structured development pipeline designed for production-grade code.

The first rule is phase-based development: Research -> Spec -> Build -> Review -> Merge.
Breaking a task into discrete, verifiable phases prevents the AI from getting lost in a single, massive context.

The second rule is a mandatory quality gate.
Every line of code must pass a verification checklist: tests, vet, lint, and spec compliance.

If the build and review don't align, a hard circuit breaker kicks in and a human is paged.

The third rule - once you've nailed down dependability - is total physical isolation.
Running every task in its own Git worktree ensures that agent "chaos" stays decoupled from the project root while you scale.

Wrap probabilistic intent in a deterministic pipeline, and the statistical guesser becomes a high-velocity development engine.

## 5. The New Engineering Mandate

The rise of AI doesn't mean we stop being engineers; it means we have to be better ones.
Our role is shifting from "writing syntax" to "designing systems that verify intent."

In this new world, unit tests are not optional - they're the foundation.

If you want to move fast without breaking things, you have to stop trusting the output and start learning the new patterns.
English is for describing what you want; code is for proving you got it.

The future belongs to the engineers who know how to build the "cage."
These are the architectural boundaries that make probabilistic AI safe for production.

I'm passionate about this new field and I'm applying these patterns for agentic development every day, in both my professional work and my own personal projects.

Architecting deterministic boundaries - building the "cages" that make AI safe for production - is exactly what I do.
I help teams leverage AI while maintaining engineering integrity.
