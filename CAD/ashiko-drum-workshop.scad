// ashiko-drum-workshop.scad — parametric stave-shell envelope master
// =====================================================================
// SOURCE OF TRUTH: build/packet/design.md "Target geometry" table
//   + CAD/drum-body/Ashiko-REV012316.SLDPRT (SolidWorks dimensional authority).
// AUTHORITY: pending_measurement. This is an HONEST ENVELOPE SCAFFOLD, NOT
//   fabrication authority until reviewed against the SolidWorks masters and
//   the 2015 workshop drawings.
//
// SCOPE / BOUNDARY (per V5 percussion addendum):
//   - Models the staved truncated-cone SHELL ENVELOPE + head ring + stave-count
//     facets parametrically, so the overall geometry traces to the design table.
//   - The TUNING-SENSITIVE compound-miter stave cut (miter + bevel derived from
//     taper half-angle, the bearing-edge lathe profile, and the rope-mali lug
//     field) are HAND-REFINED regions and are intentionally OUT OF SCOPE here;
//     they live in the SolidWorks parts and drawings/Stave-Cutting-Process.pdf.
//   - foot_od is an ASSUMPTION (not in the design table) — see comment below.
//
// Render check: openscad -o /tmp/ashiko-drum-workshop-check.stl this-file  (exit 0)
// =====================================================================

/* [Shell — from design.md Target geometry, Standard variant] */
stave_count      = 18;     // design.md: "Stave count 18" (Workshop drawings)
head_od_mm       = 279;    // design.md: Shell OD at head 279 mm (11 in), Standard
shell_height_mm  = 610;    // design.md: Shell height 610 mm (24 in)
stave_bevel_deg  = 10;     // design.md: 10 deg per face (20 deg included), n=18
head_dia_mm      = 254;    // design.md: Head diameter (soaked, mounted) 254 mm (10 in)
wall_mm          = 16;     // ASSUMPTION: nominal stave wall ~16 mm (0.63 in);
                           //   not tabulated — pending measurement of SLDPRT.

/* [Taper — ASSUMPTION, not in design.md] */
// The ashiko is a truncated cone narrowing toward the foot. The design table
// gives ONLY the head OD; the foot OD is not tabulated. Modeled as a parameter,
// clearly marked assumption, so the envelope is honest and reviewable.
foot_od_mm       = 190;    // ASSUMPTION (~0.68 x head OD). PENDING MEASUREMENT.

/* [Maple variant — design.md] */
// head_od_mm = 292; head_dia_mm = 267;  // 11.5 in shell / 10.5 in head

/* [Render] */
$fn = 160;
explode = 0;               // set >0 to lift the head ring for an exploded view

// Derived (formulas, not baked values) ------------------------------
stave_face_width_mm = PI * head_od_mm / stave_count;  // design.md "Computed: pi*D/n"
head_r  = head_od_mm / 2;
foot_r  = foot_od_mm / 2;

// Staved shell as a faceted truncated cone (n = stave_count facets) -------
module shell_outer() {
    cylinder(h = shell_height_mm, r1 = foot_r, r2 = head_r, $fn = stave_count);
}
module shell() {
    difference() {
        shell_outer();
        // inner cavity offset by nominal wall thickness
        translate([0, 0, -1])
            cylinder(h = shell_height_mm + 2,
                     r1 = foot_r - wall_mm, r2 = head_r - wall_mm,
                     $fn = stave_count);
    }
}

// Head bearing ring (goatskin mounts flush to shell OD) ------------------
head_ring_h = 22;  // ASSUMPTION: bearing-edge band height; pending measurement
module head_ring() {
    difference() {
        cylinder(h = head_ring_h, r = head_r);
        translate([0, 0, -1]) cylinder(h = head_ring_h + 2, r = head_dia_mm / 2);
    }
}

// One representative stave face (illustrative, NOT the miter-cut solid) ---
module stave_marker() {
    // thin vertical rib on the outer face to visualize stave_count / width
    a = 360 / stave_count;
    rotate([0, 0, a/2])
        translate([head_r - 1, -stave_face_width_mm/2, 0])
            cube([2, stave_face_width_mm * 0.9, shell_height_mm]);
}

// Assembly --------------------------------------------------------------
module ashiko_assembly() {
    color("Peru") shell();
    for (i = [0 : stave_count - 1])
        rotate([0, 0, i * 360 / stave_count]) color("SaddleBrown") stave_marker();
    translate([0, 0, shell_height_mm + explode * 40])
        color("Tan") head_ring();
}

ashiko_assembly();

// echo derived values for review
echo(str("stave_face_width_mm = ", stave_face_width_mm, " (pi*", head_od_mm, "/", stave_count, ")"));
