(* Ashiko Drum — Parametric Stave Geometry + Shell Acoustics Starter
   tonykoop/ashiko-drum-workshop
   Authority: estimate placeholders only — pending measured tuner data.
   Stave geometry derived from CAD/CNC Sled/Ashiko Stave REV012316.SLDPRT.
   Manipulate block is CloudDeploy-ready (Public-Execute). *)

(* ── Stave geometry ── *)

(* Number of staves → per-face bevel angle in degrees *)
BevelAngle[n_Integer] := 180.0 / n

(* Stave face width from shell OD and stave count (flat-face approximation) *)
StaveWidth[d_Real, n_Integer] := N[Pi * d / n]

(* Compound miter: given taper half-angle α (degrees) and stave count n,
   the blade tilt (bevel) and fence miter needed on a table saw. *)
CompoundMiterAngles[alpha_Real, n_Integer] :=
  Module[{phi = Pi / n, a = alpha * Degree},
    {
      "BevelAngleDeg"  -> ArcTan[Cos[a] * Sin[phi]] / Degree,
      "MiterAngleDeg"  -> ArcTan[Sin[a] / Tan[phi]] / Degree
    }
  ]

(* ── Shell acoustic model (Helmholtz / membrane approximation) ──
   The ashiko is primarily a membrane drum; the shell provides
   an air column that couples with the head.
   Fundamental frequency estimate (Rayleigh–Ritz, simplified):
     f₀ ≈ (2.405 * c) / (π * d)    [first Bessel zero, circular membrane]
   where c = wave speed in the goatskin membrane. *)

(* Approximate membrane wave speed from tension T and surface density σ *)
MembraneWaveSpeed[T_Real, sigma_Real] := Sqrt[T / sigma]

(* Fundamental mode frequency for circular membrane radius r *)
MembraneF0[T_Real, sigma_Real, r_Real] :=
  2.405 * MembraneWaveSpeed[T, sigma] / (2 * Pi * r)

(* ── Interactive model ── *)

Manipulate[
  Module[
    {
      shellOD    = shellOD_mm / 1000.0,  (* convert mm → m *)
      shellH     = shellH_mm  / 1000.0,
      n          = 18,                   (* stave count fixed for workshop batch *)
      bevel      = BevelAngle[18],
      staveW     = StaveWidth[shellOD_mm, 18],
      alpha      = 3.5,                  (* nominal taper half-angle for ashiko goblet form *)
      sigma      = 0.45,                 (* goatskin surface density kg/m², nominal *)
      T          = tensionN,
      r          = (shellOD_mm / 2.0) / 1000.0
    },
    Grid[{
      {"Shell OD (mm)", NumberForm[shellOD_mm, {5, 1}]},
      {"Shell height (mm)", NumberForm[shellH_mm, {5, 1}]},
      {"Stave count", n},
      {"Bevel angle per face (°)", NumberForm[bevel, {4, 2}]},
      {"Nominal stave width (mm)", NumberForm[staveW, {5, 1}]},
      {"Taper half-angle (°)", alpha},
      {"Membrane tension (N)", NumberForm[tensionN, {5, 1}]},
      {"Membrane wave speed (m/s)",
        NumberForm[MembraneWaveSpeed[T, sigma], {5, 1}]},
      {"Fundamental f₀ estimate (Hz)",
        NumberForm[MembraneF0[T, sigma, r], {5, 1}]},
      {"Note (est.)",
        Module[{f = MembraneF0[T, sigma, r]},
          If[f > 20,
            Row[{NumberForm[f, {5, 1}], " Hz"}],
            "—"
          ]
        ]}
    },
    Frame -> All,
    Background -> {{GrayLevel[0.9], White}, None}]
  ],

  (* Controls *)
  {{shellOD_mm, 279.0, "Shell OD (mm)"}, 240.0, 320.0, 1.0,
    Appearance -> "Labeled"},
  {{shellH_mm, 610.0, "Shell height (mm)"}, 450.0, 700.0, 5.0,
    Appearance -> "Labeled"},
  {{tensionN, 80.0, "Head tension (N)"}, 20.0, 200.0, 5.0,
    Appearance -> "Labeled"},

  ControlPlacement -> Left,
  TrackedSymbols :> {shellOD_mm, shellH_mm, tensionN}
]

(* ── Stave count sweep ── *)
TableForm[
  Table[
    {n, N[BevelAngle[n], 4], N[StaveWidth[279.0, n], 4]},
    {n, 12, 24, 2}
  ],
  TableHeadings -> {None, {"Staves", "Bevel/face (°)", "Stave width 279mm OD (mm)"}}
]
