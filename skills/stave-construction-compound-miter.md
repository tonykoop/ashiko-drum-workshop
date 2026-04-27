---
name: stave-construction-compound-miter
domain: fabrication geometry
description: |
  Convert a target drum-shell geometry into stave width, bevel, and repeatable
  cut logic for a table-saw or comparable fixture-driven workflow.
status: validated through a 16-drum ashiko workshop and later solo builds
canonical-location: tonykoop/ashiko-drum-workshop/skills/stave-construction-compound-miter.md
also-referenced-from:
  - tonykoop/ashiko-drum-workshop/SKILLS.md
  - tonykoop/ashiko-drum-workshop/README.md
  - tonykoop/djembe/README.md
  - tonykoop/dundun/README.md
provenance: |
  Derived from Morgan Drums practice and formalized through the January 2015
  ashiko workshop documented in this repository.
audience: human (builders, engineers) + agent
maintainer: Tony Koop
license: CC-BY 4.0
---

# Stave Construction Compound Miter

> *Reduce a round or tapered shell to a set of repeatable stave cuts that ordinary shop tools can actually make.*

## When to use this skill

Use this when:

- the shell is built from repeated wooden staves
- the geometry is cylindrical or conical enough that one cut strategy can describe the whole shell or a shell segment
- reproducibility matters as much as the final shape

## Core method

1. Start with the target shell diameter and stave count.
2. Compute the per-stave width from circumference divided by count.
3. Compute the mating bevel angle from the number of staves.
4. Decide whether the shell is constant-angle, single-taper, or variable-profile.
5. If the profile changes along height, decide whether to segment the body, curve the stave, or rough-build then turn to shape later.

## What this skill captures

- Geometry should make the shop process easier, not merely prettier on paper.
- Jigs and fixtures absorb operator variance.
- Cylinders and simple cones are easy cases; goblet forms are where the method gets interesting.
- Stave construction is one of the main bridges between my instrument repos and my broader fabrication work.

## Failure modes I watch for

- Using the right bevel with the wrong stave width and blaming glue-up when the math is the problem.
- Forgetting that a variable-profile drum cannot be solved by a single constant-angle cut all the way up the stave.
- Designing a cut sequence that works for one builder and collapses when eight people try it in parallel.

## Cross-references

- [`ashiko-drum-workshop/README.md`](../README.md)
- [`djembe`](https://github.com/tonykoop/djembe)
- [`dundun`](https://github.com/tonykoop/dundun)
