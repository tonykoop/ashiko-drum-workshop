# Ashiko Drum-Building Workshop — Build Risks

## Fabrication risks

### R1 — Stave bevel angle inconsistency (HIGH)
If the table-saw sled is not set to exactly the correct bevel before each cut sequence,
bevel variance across 18 staves accumulates into an out-of-round shell that cannot be
corrected at heading. Mitigation: set the sled against a reference bevel gauge before
each drum's stave batch; verify with a test fit of all 18 dry staves in a ring before glue-up.
The sled CAD (`CAD/CNC Sled/`) and `drawings/Stave-Cutting-Process.pdf` document the
setup procedure.

### R2 — Two-half glue-up timing (MEDIUM)
Titebond III has an open time of approximately 10 minutes. With 9 staves per half-round,
the caul must be positioned and rope-clamped within this window. With first-time builders,
have all materials staged before opening the glue. Do not attempt a full 18-stave
single-pass glue-up.

### R3 — Lathe fixture walk (MEDIUM)
If the keyed drive shaft is not fully seated in the headstock taper, the drum body will
walk axially during turning. This can damage the bearing edge. Check for play before
starting the lathe. The V2 shaft revision (`CAD/lathe-fixture/`) addressed V1 slippage.

### R4 — Head over-soak or under-soak (MEDIUM)
Goatskin soaked less than 12 minutes will not stretch to seat properly over the hoop.
Soaked more than 30 minutes it may weaken and tear on tightening. Aim for 15–20 minutes
in room-temperature water; check for full flexibility before mounting.

### R5 — Out-of-round shell at heading (HIGH)
A shell with OD variance > 2 mm across perpendicular diameters will not seal the head
evenly, causing tone inconsistency and potential head tearing at the out-of-round point.
Lathe-turning the shell to final OD is the primary mitigation; check with inside calipers
before heading.

## Safety risks

### S1 — Compound miter table saw cuts
Cutting 18 staves per drum with two compound miter passes per stave requires full push-stick
technique and positive control of narrow stock against the sled fence. Use featherboards
where possible. Do NOT reach over the blade to retrieve cut stave pieces.

### S2 — Lathe speed selection
Turn drum bodies at the lowest speed that provides stable rotation (typically 300–500 RPM
for a 10–12" shell). Higher speeds increase vibration risk if the body is out of balance.
Stand to the side of the lathe headstock during the first few rotations of each shell.

### S3 — Rope lacing tension
Mali-style rope lacing generates significant radial compression on the shell. Check that
no glue-line gaps opened during final tuning. A gap > 0.5 mm at a load-bearing glue line
is a reject — the shell can split under head tension.

## Provenance notes

- Pitch measurements not recorded for 16 workshop drums (2015). `validation.csv` shows
  nominal geometry only; `observed_pitch_hz` fields are empty.
- The 2021 solo build of Ashiko #009 (Douglas Fir) was not photographed during all stages.
- Segmented-ashiko CAD in `CAD/segmented-ashiko/` is an alternate geometry study, not the
  build authority for the 18-stave workshop drums. Do not use for stave-cut parameters.
