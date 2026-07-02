# Ashiko Drum-Building Workshop — Design Packet

**Status: L4 V5 empirical packet** — validated by the 2015 workshop build of 16 drums.
Controlling authority: `CAD/drum-body/` SolidWorks parts + stave-cut drawings in `drawings/`.
Pitch measurements pending re-capture (workshop tuner readings were not recorded; see `validation.csv`).

## Instrument summary

The ashiko is a West African hand drum of Yoruba origin — conically tapered staved hardwood shell,
goatskin head, rope-mali tuning. Tone character sits between djembe (deeper, resonant bass) and
conga (brighter, more percussive attack). The workshop format produced 16 drums across 8 builders
over three Saturdays in January–February 2015 at a Twin Cities makerspace.

## Target geometry

| Parameter | Standard | Maple variant | Authority |
|-----------|----------|---------------|-----------|
| Stave count | 18 | 18 | Workshop drawings |
| Shell OD at head | 279 mm (11 in) | 292 mm (11.5 in) | `CAD/drum-body/Ashiko-REV012316.SLDPRT` |
| Shell height | 610 mm (24 in) | 610 mm | Workshop drawing set |
| Tall variant height | 622 mm | — | `validation.csv` rows ASH-011/012 |
| Stave face bevel | 10° per face (20° included) | 10° per face | Derived from n=18 staves |
| Stave width (nominal, flat approx.) | ~48.7 mm | ~51.0 mm | Computed: π·D / n |
| Head bearing edge OD | flush with shell OD | flush | Lathe-turn to final |
| Head diameter (soaked, mounted) | 254 mm (10 in) | 267 mm (10.5 in) | BOM V2 |
| Rope | 3/16" double-braided polyester | same | BOM V2 |
| Finish | oil + lacquer | same | Workshop process |

## Stave geometry — compound miter method

The shell is a truncated cone approximated with flat staves. Each stave has:
- **Miter angle** (cut angle in the fence direction): derived from the taper half-angle
- **Bevel angle** (tilt of the blade): derived from the stave count (n=18 → 10°)

See `skills/stave-construction-compound-miter.md` for the general derivation.
The specific cut parameters used in the workshop are encoded in the SolidWorks part
`CAD/CNC Sled/Ashiko Stave REV012316.SLDPRT` and documented in `drawings/Stave-Cutting-Process.pdf`.

## Jig and fixture authority

| Fixture | CAD authority | Notes |
|---------|---------------|-------|
| Table-saw sled | `CAD/table-saw-sled/` SLDPRT set | Four parts: base-board, rib, dowel, dowel-holder |
| Lathe drive fixture | `CAD/lathe-fixture/` SLDASM | Keyed shaft V2, collar flange, cone adapter |
| Index sled | `CAD/CNC Sled/` SLDPRT set | Compound-angle stave-cut jig for ≤3° barrel-taper ashiko |

## Wood species

| Species | Shell color | Tone character | BOM note |
|---------|-------------|----------------|----------|
| Cherry | warm reddish | warm mid, good projection | Primary batch; ~10 drums |
| Hard maple | pale | bright, crisp attack | Used for slightly larger 292 mm variant |
| Walnut | dark brown | deep, mellow sustain | 2021 solo build (Ashiko #009) |
| Padauk | orange-red | high brightness | Mixed into stave drafts |
| Purpleheart | purple | very bright | Accent staves only |

## Design decisions recorded

1. **18-stave count**: chosen as smallest count that keeps individual stave width manageable on a 10–12" drum without over-compounding the bevel angle. Gives ≈48 mm stave face, comfortable to handle and clamp.
2. **Two-half glue-up**: closing 18 staves as two 9-stave half-rounds, then mating the halves, proved dramatically more reliable than full-ring clamping for first-time builders.
3. **Rope-mali tuning**: retained traditional method over metal hardware — reduces cost, is repairable in the field, and allows head re-tensioning without tools.
4. **Lathe fixture design**: internal keyed drive shaft avoids marring the outside of the shell and transfers torque without slippage. Full SolidWorks assembly in `CAD/lathe-fixture/`.
5. **Stave-draft BOM**: buying lumber in bulk for all 8 builders cut per-drum cost from ~$135 to ~$78 by enabling volume discounts and efficient board utilization across the batch.

## Open measurement gates (L4 → public-build-ready)

- Pitch re-measurement: none of the 16 workshop drums had post-build pitch recorded with a tuner.
  Re-measurement requires physical access to the drums (contact builders).
- Out-of-round characterization: shell OD check data was not recorded numerically (go/no-go only).
- Goatskin provenance: supplier and batch ID not recorded for the 2015 build.

These gates do not block further builds from this packet but are noted in `validation.csv`
and `reference/acoustic-validation-checklist.md`.
