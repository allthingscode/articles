---
title: "Dev Factory Maturity, Part 3: The Control Plane Your Factory Actually Needs"
date: 2026-04-30T09:00:00-05:00
draft: false
slug: dev-factory-3of4
aliases:
  - /articles/dev-factory-maturity-part-3/
  - /posts/005-dev-factory-maturity-part-3/
---

This is Part 3 of a 4-part series on dev factory maturity. Parts 1 and 2 cover the application framing and failure modes that set up this control-plane discussion.

Part 1 covered the basic application framing. Part 2 covered the ways the workflow can get stuck in loops or fail to converge. This part is about the control plane that gives you visibility into the run, preserves the state needed for recovery, and makes measurement possible.

## 9. Have You Separated Progress From Success?

Progress tracking gives you real-time telemetry on what is actually happening.

If a run needs to be resumed, the next agent needs to know exactly where to pick up so it does not repeat work or burn tokens catching up.

Without that visibility, failures become expensive because the next run has to reconstruct its own state.

You use that telemetry to monitor the run, analyze what happened, and improve the factory over time.

## 10. Have You Instrumented Evals, Not Just Outputs?

You need a way to measure whether the factory is still holding together.

Manual evals still matter. Some of the most important questions are still judgment calls. Does the run make sense? Did the workflow stay on track? Did the output move the task forward or just create more cleanup?

Metrics should tell you whether the system is improving or just getting louder.

If you cannot measure the process, you cannot tell whether it is becoming more reliable.

## 11. Have You Tracked Cost Per Item?

You need to know what each backlog item or story is costing you.

Budget ceilings and handoff counts are useful, but they are only a proxy. A better efficiency view tracks cost per item, or at least cost per phase or completion.

You also need a budget. If a story runs past its budget, that should automatically trigger your intervention.

That is not just about cost control. It is also a clean way to bring you back into the loop when the system is spending too much, looping too long, or failing to converge.

If you do not know the token cost of a story, you cannot tell whether the factory is getting more efficient or just more expensive.

That matters even if the system is working. A factory that runs reliably but burns too much budget is still a problem.

If you want to run more than one item at once, you also need isolation. Worktrees, file affinity, and conflict checks keep parallel tasks from stepping on each other.

## 12. Have You Defined What Gets Archived and Why?

A real factory needs memory.

You need logs, handoffs, prompt versions, eval results, and decisions preserved in a usable way. Not just for compliance. For learning. For auditability. For replay.

If you cannot inspect the past, you cannot improve the system.

Archives are not dead storage. They are operational context that you may need later when you are trying to figure out why a workflow behaved the way it did.

The same control plane should include runbooks and prompt templates. If the process changes, the procedure should be versioned and reusable instead of rebuilt from scratch.

## 13. Have You Built Replay or Recovery?

If a session fails, can you reconstruct what happened?

If a long task gets interrupted, can you resume without starting over?

If a bad outcome shows up later, can you trace it back to the point where the process drifted?

Without recovery and replay, the factory is brittle under interruption.

You need the right tools to recover from whatever happened. You need the ability to undo, rewind, and replay what matters so you can sort out unforeseen issues or clean up a mess without starting over from scratch.

## 14. Have You Versioned the Prompts and the Process?

Prompts are configuration, not magic.

Process changes need versioning too.

If versioning is sloppy, you lose your audit trail. You stop being able to tell what changed, what improved, and what regressed.

That is not just a documentation problem. It is a process problem.

If you are iterating on a factory and you cannot track the versions of the things that drive it, you are guessing.

## 15. Have You Defined the Human Checkpoints?

Some interaction points are continuation checkpoints.

Some are decision gates.

They are not the same thing.

The important part is where the checkpoint belongs in the workflow and what role it plays.

Some checkpoints are there so you can confirm that the previous step is still on track before the workflow moves too far ahead.

Those checkpoints matter because the deterministic gates already handle validation. The checkpoints keep you in command and give you a defined place to intervene before any discovered problems spread.

That placement matters. A lot.

When a checkpoint fires, log the reason. Those decisions become part of the factory's memory, and they show you where the system keeps needing intervention.

---

The final part picks up from there. Once the control plane exists, the remaining question is whether it still makes sense to keep pushing toward full autonomy, given the vendor reality and the cost of the last 10 percent.
