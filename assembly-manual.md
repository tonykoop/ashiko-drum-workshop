# Ashiko Drum-Building Workshop — Assembly Manual

This manual documents the eight-stage build process used in the 2015 workshop.
Tolerances reference the acoustic validation checklist at `reference/acoustic-validation-checklist.md`.
SolidWorks CAD authority is in `CAD/`; stave-cut geometry is in `CAD/CNC Sled/`.

---

## Stage 1 — Lumber sourcing and stave-draft

1. Calculate board feet per drum: 4 bd-ft for a standard cherry drum (18 staves × 660 mm × 50 mm × 25 mm rough).
2. Buy in bulk for all builders to capture volume discounts (reduced cost from ~$135 to ~$78/drum in 2015).
3. Execute the stave draft: distribute boards across drums to give each drum a balanced wood mix.
   See `BOM/Stave-Draft-Rounds-1-7.pdf` for the actual 2015 draft spreadsheet.

## Stage 2 — Ripping to rough width

1. Set the table saw fence to rough stave width (≈55 mm for 279 mm shell; allows for bevel cleanup).
2. Rip all boards for a single drum before moving to the next to minimize setup changes.
3. Cross-cut stave blanks to rough length (660 mm; final trim to 610 mm after shape cleanup).

## Stage 3 — Compound miter cuts (table-saw sled)

**Reference:** `skills/stave-construction-compound-miter.md`, `drawings/Stave-Cutting-Process.pdf`

1. Set up the compound miter sled (`CAD/CNC Sled/`) — verify bevel angle (10°) against reference gauge.
2. For each stave: bevel both long faces using the sled fence, then miter-cut both ends.
3. Dry-fit all 18 staves into a ring before glue-up. Accept only if: all joints close cleanly, no more than 0.5 mm gap at any joint, and the ring holds its shape without clamps.
4. Label each stave with its position number in the ring (see `drawings/Stave-Labels-Avery-5160.pdf`).

## Stage 4 — Two-half glue-up

**Open time: ~10 min. Have all materials staged before opening glue.**

1. Divide 18 staves into two half-rounds of 9 staves each (positions 1–9, positions 10–18).
2. Apply Titebond III to both mating faces of every joint in one half-round.
3. Rope-clamp each half-round with cauls (`build/packet/cut-list.csv` CAUL-HALF) and tighten.
4. Allow 2 hours minimum before removing clamps; 24 hours before mating the halves.
5. Repeat for the second half-round.
6. Glue the two half-rounds together in a single seating pass; verify ring geometry before glue sets.
7. Allow 24 hours full cure before any lathe work.

## Stage 5 — Lathe turning

**Reference:** `CAD/lathe-fixture/Ashiko-Turning-Assembly.SLDASM`

1. Mount the keyed steel drive shaft (V2 revision) in the lathe headstock taper. Verify no axial play.
2. Seat the drum body on the cone adapter; tighten collar flange. Rotate by hand first — confirm no wobble.
3. Set lathe to 300–500 RPM. Stand to the side of headstock for the first few rotations.
4. Turn the exterior to final OD (279 mm standard / 292 mm maple variant). Measure with inside calipers.
5. Turn the bearing edge — radius ≤ 1 mm, flush, no proud glue.
6. Final out-of-round check: < 2 mm variation across perpendicular diameters.

## Stage 6 — Sanding and finishing

1. Sand exterior progressively: 80 → 120 → 180 → 220 grit.
2. Blow out dust between grits.
3. Apply two coats Tung oil (Waterlox or equivalent); allow full cure per manufacturer spec.
4. Apply two coats spray lacquer; sand lightly with 400 grit between coats.
5. Final wipe-down with tack cloth before heading.

## Stage 7 — Ropework

1. Bend head hoop to shell OD ± 1 mm; confirm fit before soaking head.
2. Soak goatskin head 15–20 minutes in room-temperature water; check for full flexibility.
3. Center head over hoop; wrap and pin with temporary ties.
4. Lace rope in mali-weave pattern from top hoop to bottom anchor.
5. Alternately tighten opposite pairs of laces to draw head down evenly.
6. Allow head to dry completely under initial tension before final tuning.

## Stage 8 — Final tuning and acceptance

1. After head has dried at initial tension (~12–24 hours), re-tension all laces evenly.
2. Use a tuning mallet or hand technique to check tone uniformity around the head circumference.
3. Record observed pitch (Hz + note name) in `validation.csv` if a chromatic tuner is available.
4. Acceptance criteria per `reference/acoustic-validation-checklist.md`:
   - Head seats flat without rocking (no out-of-round gap at edge)
   - Tone consistent within ±½ step at 4 quadrants of the head
   - No creak or movement at glue lines under hand tension
