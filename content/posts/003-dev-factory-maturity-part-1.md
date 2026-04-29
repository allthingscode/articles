---
title: "Dev Factory Maturity, Part 1: A Dev Factory Is Its Own Application"
date: 2026-04-28T09:00:00-05:00
draft: false
slug: dev-factory-1of4
aliases:
  - /articles/dev-factory-maturity-part-1/
  - /posts/003-dev-factory-maturity-part-1/
---

Building a dev factory means building a real application.

You do not get one by stitching together markdown files. Markdown can describe the workflow, but deterministic code has to make it real.

That means it needs architecture, workflow logic, state management, testing, recovery, and operational rules. It is not just a few prompts, a few skills, and some files stitched together with optimism.

This is Part 1 of a 4-part series on dev factory maturity. Start here, then read the later parts in order.

## 1. A Dev Factory Is Its Own Application

A dev factory is not a set of markdown files. It is its own application.

That means it needs architecture, workflow logic, state management, testing, evaluation, recovery, and operational rules. It is not just a few prompts, a few skills, and some files stitched together with optimism.

If you want a real factory, you have to build a real application.

Markdown can describe a process. It cannot enforce one by itself.

A clean backlog matters too. If the intake is not producing well-structured, well-defined tasks with clear deliverables and acceptance criteria, the factory is highly unlikely to produce what you want. Grooming, deduping, and keeping a single source of truth for state are part of the system.

## 2. The Human Is Still the Driver

You are still the driver.

The system may do a large amount of the work, but you have to be ready to take over at any point when things are not right. That is not a flaw. That is the operating reality.

The fantasy version of a dev factory is the one where you disappear and the machine just keeps going. The real version is more sober. You supervise the workflow, step in when needed, and keep the system from drifting off the rails.

The question is whether the factory can keep moving without constantly needing rescue.

## 3. The Real Problem Is End-to-End Consistency

Most dev factories do not fail completely.

They fail because the same workflow never behaves the same way twice. One run succeeds one way, the next run succeeds a different way, and the next one fails or gets stuck in a different way. That is the real pain point: non-determinism.

If the workflow cannot repeat cleanly, it cannot become reliable.

That is the difference between a factory and a pile of automation ideas.

## 4. Have You Modeled the Workflow as a Graph?

A dev factory is not a linear checklist.

It is a directed workflow graph with nodes, transitions, branches, retries, and terminal states.

Each step needs to know what can happen next. That means the workflow needs explicit transition logic. If the current state passes, where does it go? If it fails, where does it go? If it needs another pass, what is allowed? If it cannot continue, where does it stop?

If you do not define that graph clearly, the workflow will still produce one. It will just vary from run to run in ways you did not plan for.

Once you set the workflow up as a graph, you still have more to do. The graph is necessary, but it is not enough.

---

The next part gets into the failure modes that show up once the graph is real and the workflow starts moving between stages repeatedly.

Part 2 is where the review loops, completion boundaries, handoffs, and circuit breakers start to matter. That is where the factory starts needing real guardrails instead of just a clean diagram.
