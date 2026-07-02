# Ashiko Drum-Building Workshop — Drawing Brief

## Priority drawings needed for public build authority

### D1 — Stave geometry detail (HIGH)
**Purpose:** Builder can verify stave cut angles without SolidWorks.
**Contents:** Stave face width (48.7 mm / 51.0 mm for maple variant), bevel angle (10°),
miter angle per drum taper, length (610 mm / 622 mm), and grain direction.
**Source CAD:** `CAD/CNC Sled/Ashiko Stave REV012316.SLDPRT`
**Status:** SolidWorks drawing exists (`CAD/CNC Sled/Drawings/`); needs DXF export.

### D2 — Shell cross-section with head-bearing detail
**Purpose:** Shows how stave edges meet, bearing-edge radius, and hoop seat geometry.
**Contents:** Half-section of assembled shell at head end; OD, wall thickness at bearing edge,
and edge radius target.
**Source CAD:** `CAD/drum-body/Ashiko-REV012316.SLDPRT` (assembled cross-section)
**Status:** Not yet exported as standalone drawing.

### D3 — Lathe fixture assembly (MEDIUM)
**Purpose:** Builder can fabricate or commission the keyed-shaft fixture without SolidWorks.
**Contents:** Shaft OD, keyway dimensions, flange bolt pattern, cone adapter profile.
**Source CAD:** `CAD/lathe-fixture/Ashiko-Turning-Assembly.SLDASM`
**Status:** Partial PDF exports exist in `CAD/lathe-fixture/`; no complete dimensioned drawing.

### D4 — Table-saw sled assembly (MEDIUM)
**Purpose:** Allows reproduction of the compound-angle stave sled.
**Contents:** Base board dimensions, rib angle, dowel spacing, fence position.
**Source CAD:** `CAD/table-saw-sled/` SLDPRT set
**Status:** Reference PDF in `reference/Table-Saw-Sled-Construction-Reference.pdf`; needs
dimensioned CAD drawing export.

### D5 — Per-builder stave draft sheet (reference)
**Purpose:** Documents which boards each of the 8 builders received; historical reference.
**Source:** `drawings/Stave-Cutting-Process.pdf` (workshop document)
**Status:** Already exists as PDF; no conversion needed.

## Format notes

All DXF exports should be in AutoCAD 2013 format (AC1027) for broadest compatibility.
SVG previews can be derived from DXF via Inkscape for web display; mark as `derived_preview`
in `visual-output-register.csv`.
