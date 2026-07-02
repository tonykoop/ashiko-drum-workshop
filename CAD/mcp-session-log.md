# MCP / External-Tool Session Log

V5 provenance record for artifacts generated or modified by external tools.
Required before claiming any artifact came from OpenSCAD, Blender, Illustrator,
Photoshop, Fusion, SketchUp, Wolfram, or similar tooling.

| session_id | tool | input_authority | outputs | role | authority_result | review_status | notes |
|---|---|---|---|---|---|---|---|
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | ashiko-drum-workshop-design-table.xlsx | design.md, bom.csv, sourcing.csv, cut-list.csv, validation.csv | packet_refresh | fabrication | self_checked | V5 refresh pass; tabular packet data reviewed against design table. Root baseline files mirror build/packet/ authored packet. No dimension changes made. Provenance rows added to satisfy V5 fabrication-artifact logging. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) + OpenSCAD CLI | ashiko-drum-workshop-design-table.xlsx, build/packet/design.md | CAD/ashiko-drum-workshop.scad | cad_authoring | pending_measurement | self_checked | Parametric stave-shell envelope master: stave_count=18, head OD 279 mm, shell height 610 mm, 10 deg bevel, stave_face_width = pi*D/n — all from design.md Target geometry. foot_od + wall are marked assumptions (not tabulated). Compound-miter stave cut + bearing-edge profile intentionally out of scope (hand-refined, live in SolidWorks). openscad render check: pass (openscad -o STL, exit 0). NOT fabrication authority until reviewed against SLDPRT masters. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | Mersenne-Taylor circular membrane model | wolfram/ashiko-wolfram-model.wl | analysis_source | derived_preview | unreviewed | Source-only membrane tension / fundamental-frequency model; not executed. L2 evidence only. |
