# Ashiko Drum — Acoustic Validation Checklist

Acceptance checklist for workshop-built ashiko drums. Use at two checkpoints:
pre-build (before glue-up or before heading) and post-build (after first
tuning). Gates are pass/fail/pending — no partial credit.

This checklist records workshop outcomes against the nominal build targets in
`validation.csv`. It does not substitute for a full acoustic measurement loop;
that requires a measurement microphone and signal chain beyond the scope of
the original 2015 workshop.

---

## Pre-Build Gates (before heading)

### Shell geometry

- [ ] Stave count confirmed (18 standard for this workshop batch).
- [ ] Bevel angle consistent across all staves on a given drum (visual check
  with reference bevel gauge; large variation is a fail).
- [ ] Shell diameter measured at head-bearing surface: within ±3 mm of nominal
  before accepting for heading (nominal 279 mm cherry / 292 mm maple).
- [ ] Shell roundness: out-of-round ≤ 2 mm across any two perpendicular diameters
  at the head-bearing surface. Check with inside calipers.
- [ ] Shell height within ±5 mm of nominal (610 mm standard / 622 mm tall variant).
- [ ] Glue lines at bearing edge flush; no proud glue that would rock the head.

### Head preparation

- [ ] Goatskin head soaked in room-temperature water for 15–20 min.
- [ ] No visible holes, tears, or thin spots in the head membrane before seating.
- [ ] Head diameter at least 25 mm larger than shell bearing-edge OD on each
  side (allows wrap over hoop without pinching).

### Rope and hoop

- [ ] Hoops debarked and any sharp edges sanded before head wrap.
- [ ] Rope type confirmed consistent across all drums in the batch
  (substituting cord diameter or fiber mid-batch changes tuning range and
  sustain character).
- [ ] Rope cut to uniform length per drum; excess bundled and kept with the drum
  for later adjustment.

---

## Post-Build Gates (after first tuning)

### Tuning and pitch

- [ ] Head seated evenly (no low spots where rope pulls unevenly on one side).
- [ ] Fundamental pitch audible by ear: slap tone rings sustain ≥ 1 s in a
  quiet room. If sustain collapses under 0.5 s, check bearing edge and head
  seating.
- [ ] Target pitch range: for a 279 mm cherry shell, fundamental typically
  lands D3–G3 (approximately 147–196 Hz) with a Mali-weave rope system at
  working tension. This is a planning target, not a specification — actual
  pitch depends on head thickness, rope tension, and room humidity.
  **Modeling caveat**: pitch estimates in validation.csv are based on
  generalized membrane-acoustics ratios from similar-diameter instruments;
  they are not derived from physical measurement of these specific 16 drums.
- [ ] Open tone (palm flat on center) clearly lower in pitch than slap tone
  (fingers on edge). If tones are close together, head may be overtensioned.
- [ ] Bass tone (thumb press near center, other hand mutes) rings cleanly.
- [ ] No buzzing or sympathetic rattle from loose hoops, rope, or glue joint.

### Safety and ergonomics

- [ ] Head firmly seated; no audible creak under normal playing pressure.
- [ ] No sharp rope ends exposed above the hoop wrap level.
- [ ] Shell shows no cracking at glue lines after first tuning cycle.
- [ ] Drum sits level on a flat surface without rocking.

---

## Recording Notes

Record outcomes per drum in `validation.csv` columns `observed_pitch_hz`,
`observed_pitch_note`, and `observed_tone_quality`. For 2015 workshop drums
where measurements were not taken, leave those fields as `pending_measurement`.
Any future measurement session should record: tuner or spectrum-analyzer
reading, room temperature, relative humidity, and head age since soaking, so
results can be compared across sessions.
