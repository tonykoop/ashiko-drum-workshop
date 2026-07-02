# Design Intent — ashiko-drum-workshop rev A

- Master CAD: `CAD/ashiko-drum-workshop.scad` (sha256: 3d7b2cb07bc485b7999f87ff7a288264ec39a5a2cf3f64bfc15d8043c1f43e45), envelope driven by `ashiko-drum-workshop-design-table.xlsx` (sha256: d6d778341f5a2d4ffbb70eaf88692447e9b2117a7af8be7361242dee5e701dc7) and the `CAD/drum-body/` SolidWorks parts (dimensional authority).
- Function: West African ashiko hand drum — conically tapered staved hardwood shell (18 staves) with a goatskin head under rope-mali tension. Tone sits between djembe (deeper bass) and conga (brighter attack). Empirically validated by the 2015 workshop build of 16 drums across 8 builders.
- Environment: hand-played acoustic membranophone; solid-wood staved shell moves with humidity; rope-mali system carries sustained head tension. Head is a tuned load path.
- Target qty: 1 (prototype reference; workshop historically produced 16). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Stave count | 18 | dry-fit all 18 in a ring before glue | shell roundness / bevel accumulation | design.md Target geometry (Workshop drawings) |
| Shell OD at head | 279 mm (11 in) std / 292 mm (11.5 in) maple | lathe-turn to final, flush bearing edge | head seating / OD | design.md (CAD/drum-body/Ashiko-REV012316.SLDPRT) |
| Shell height | 610 mm (24 in) | cut-list gate | proportion / air column | design.md Target geometry |
| Stave face bevel | 10 deg per face (20 deg included) | reference-gauge set per batch | shell roundness | design.md (derived from n=18) |
| Stave face width | pi*D/n ≈ 48.7 mm (std) | caliper vs computed | ring closure | design.md "Computed: pi*D/n" |
| Head diameter (soaked, mounted) | 254 mm (10 in) std / 267 mm maple | soak/mount procedure | tunable pitch | design.md (BOM V2) |
| Foot OD | assumption (~190 mm) — NOT tabulated | measurement required | taper / stance | .scad assumption; PENDING MEASUREMENT |

## Incidental (free for DFM)

- Wood species selection and stave draft mix (cherry/maple/walnut/padauk/purpleheart), external finish, cosmetic rope-wrap pattern, foot styling below the resonating body.

## Must-nots (DFM may never violate)

- Do not let stave bevel drift across the 18-stave batch — reset the sled against a reference bevel gauge each drum and dry-fit the full ring before glue (risks.md R1).
- Do not attempt a single-pass 18-stave glue-up; close as two 9-stave half-rounds within Titebond III open time (risks.md R2).
- Do not run the lathe without the keyed drive shaft fully seated in the headstock taper — walk damages the bearing edge (risks.md R3).
- Do not treat the .scad foot_od / wall / bearing-edge band as fabrication dimensions — they are assumptions pending measurement of the SolidWorks masters.

## Material intent

- Preferred: staved hardwood shell (cherry primary; hard maple for the larger variant) per bom.csv; goatskin head; 3/16 in double-braided polyester rope; oil + lacquer finish.
- Acceptable subs: per sourcing.csv (spec-first; live prices unverified).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable. L4 empirical status preserved (backed by the 2015 build); this pass added only the envelope master, provenance, and intake.
