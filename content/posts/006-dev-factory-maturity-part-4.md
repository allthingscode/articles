---
title: "Dev Factory Maturity, Part 4: Why the Last 10 Percent Is a Bad Trade"
date: 2026-05-01T09:00:00-05:00
draft: false
slug: dev-factory-4of4
aliases:
  - /articles/dev-factory-maturity-part-4/
  - /posts/006-dev-factory-maturity-part-4/
---

This is Part 4 of a 4-part series on dev factory maturity. Parts 1 through 3 cover the application framing, failure modes, and control plane that lead up to this point.

Parts 1 through 3 established the factory model. This part starts with a recap of the mature dev factory components, then closes the series by looking at the economic limit and the practical tradeoffs.

## Mature Dev Factory Components

| Capability | What It Does | Why It Matters |
|---|---|---|
| Application framing | Treats the dev factory as a real application with architecture, state, testing, recovery, and operational rules | Keeps it from collapsing into a markdown-only workflow |
| Workflow graph | Defines nodes, transitions, branches, retries, and terminal states | Prevents accidental behavior and inconsistent reruns |
| Human driver role | Keeps the human in command when the system is not right | Prevents blind automation and drift |
| Review loops | Controls how many times work can bounce back and forth | Stops token burn without forward progress |
| Completion definition | Requires real artifacts, valid exit states, and a clean handoff | Separates stopping from actually finishing |
| Structured handoffs | Carries context, artifacts, risks, and next decisions forward | Reduces ambiguity at the seams |
| Circuit breakers | Stops retries and long-running loops when they stop converging | Prevents waste and escalation failure |
| Progress telemetry | Shows where a run is and where it can resume | Makes recovery and continuity possible |
| Evals and measurement | Measures quality with both judgment calls and metrics | Tells you whether the factory is actually improving |
| Budgets and cost controls | Tracks turn, token, time, retry, handoff, scope, and item budgets | Shows whether the factory is efficient or just expensive, and when it needs intervention |
| Archives | Preserves logs, handoffs, prompt versions, run records, and decisions | Supports replay, learning, and auditability |
| Recovery and replay | Lets you resume, rewind, undo, or reconstruct a run | Makes the system resilient to interruption |
| Versioning and provenance | Tracks prompt versions, workflow versions, artifact revisions, and run provenance | Makes improvement, regression, and audit history visible |
| Human checkpoints | Places continuation checkpoints and decision gates where the operator can intervene | Keeps control with the human when needed |

## 16. Have You Accepted That the Last 10 Percent Is a Bad Trade?

You can get a lot of leverage before full autonomy.

The final stretch usually requires disproportionate effort.

That effort often buys only marginal gains.

Overinvesting in the last 10 percent can be ambition wearing a business case.

The goal is not to chase perfect autonomy. The goal is to know where the practical stopping point is.

## 17. Have You Considered the Vendor Reality?

You are building an application class that major vendors are also actively productizing.

This is not a novelty project. It is a moving product category.

Most companies do not create their own email application. Eventually, most companies will not want to create their own dev factory either.

The main reasons to attempt it are:

- academic value, discovery, and experimentation
- avoiding the high-dollar commercial options / lock-in

In the age of AI, software is more ephemeral, which makes rolling your own dev factory easier than it has ever been.

The work can be worth doing. But only if you are honest with yourself about whether you are building for learning, leverage, or long-term ownership.

## 18. Why Engineers Still Push Anyway

Engineers will still try to push the system to the limit.

Wonder is the precursor to discovery.

There is value in finding out what it actually takes.

The hands-on experience matters, even if the production ROI stops well before full autonomy.

That reason is separate from the business case, and it is worth acknowledging directly.

Experimentation has value. But experimentation is not the same as a business decision.

## 19. The Practical Conclusion

If your dev factory cannot run consistently end to end, the issue is probably structural.

The factory needs to be treated as a real software system with state, control, measurement, recovery, and governance.

The real target is not unmonitored autonomy.

The real target is a factory that can keep moving from intake to completion without constantly needing rescue.

The Operator still has to verify the result, close out the run, and hand the system back for the next cycle.

Owning the factory comes with costs: maintenance, backlog hygiene, and the work of keeping the system in runnable condition.

That is the bar.

---

I do not build upon wishful thinking. I build upon structure, gates, recovery, and control. I build systems that can keep moving without falling apart at every step. This is what I build. This is how I build it. This is why it works.
