(* Ashiko Drum Workshop — membrane acoustics and tension model.
   Ashiko is a West African truncated-cone drum played with bare hands.
   Membrane fundamental frequency: Mersenne-Taylor circular membrane model.
   f_01 = (α_01 / (π * D)) * sqrt(T / σ)
   where α_01 = 2.405 (first zero of J_0), D = membrane diameter, T = tension (N/m), σ = areal density (kg/m²).
   Authority: reference_only.
   SPDX-License-Identifier: CERN-OHL-W-2.0 *)

ClearAll[membraneFreq, arealDensity, requiredTension];

(* α₀₁ = 2.4048 — first zero of Bessel J_0 *)
alpha01 = 2.4048;

membraneFreq[D_, T_, sigma_] :=
  (alpha01 / (Pi * D)) * Sqrt[T / sigma];

arealDensity[thickM_, rhoMat_] := thickM * rhoMat;

requiredTension[f_, D_, sigma_] :=
  sigma * (f * Pi * D / alpha01)^2;

(* Ashiko nominal: head diameter ~28 cm, traditional goat-skin head *)
ashikoDefault = <|
  "headDiamCm" -> 28., "skinThickMm" -> 1.2, "rhoGoatSkin" -> 850.,
  "targetNote" -> "D4", "targetMidi" -> 62
|>;

ashikoExplorer = Manipulate[
  Module[
    {D_m, sigma, fEst, tReq, fLow, fHigh, plotT,
     harmonics, harmTable},

    D_m   = headDiamCm / 100.;
    sigma = arealDensity[skinThickMm / 1000., rhoSkin];
    fEst  = membraneFreq[D_m, tensionNm, sigma];
    tReq  = requiredTension[targetHz, D_m, sigma];

    harmonics = Map[Function[r,
      membraneFreq[D_m, tensionNm * r^2, sigma]
    ], {1., 1.593, 2.136, 2.653, 3.156, 3.652}];
    harmTable = MapThread[Function[{n, f},
      {n, NumberForm[f, {5, 1}]}
    ], {{"01","11","21","02","31","12"}, harmonics}];

    plotT = Plot[membraneFreq[D_m, t, sigma], {t, 10., 500.},
      AxesLabel -> {"Tension (N/m)", "Frequency (Hz)"},
      PlotLabel -> "Head frequency vs. tension",
      Epilog -> {Red, Dashed, InfiniteLine[{{tensionNm, 0.}, {tensionNm, 1.}}]},
      PlotStyle -> {Darker[Orange], Thick}, ImageSize -> 420];

    Column[{
      Style["Ashiko Drum Workshop — membrane tension model  (ESTIMATES ONLY)", Bold, 16],
      Style["Circular membrane model (Bessel modes). Actual tuning requires measured head tension.", Italic, Gray, 11],
      "",
      Row[{
        Grid[{
          {"Head diameter (cm)", headDiamCm},
          {"Skin thickness (mm)", skinThickMm},
          {"Skin areal density (kg/m²)", NumberForm[sigma, {5, 4}]},
          {"Applied tension (N/m)", tensionNm},
          {"Fundamental frequency (Hz)", NumberForm[fEst, {5, 1}]},
          {"Target freq (Hz)", NumberForm[targetHz, {5, 1}]},
          {"Required tension for target (N/m)", NumberForm[tReq, {5, 1}]}
        }, Frame -> All, Alignment -> Left, Background -> {None, {LightCyan, {White}}}],
        "   ",
        Column[{
          Style["Modal frequencies (ratio to f01):", Bold],
          Grid[Prepend[harmTable, {Style["Mode",Bold], Style["Hz",Bold]}],
            Frame -> All, Alignment -> Left, Background -> {None, {Lighter[Orange,0.8], {White}}}]
        }]
      }],
      "",
      plotT
    }, Spacings -> 2]
  ],

  {{headDiamCm, 28., "Head diameter (cm)"},      18., 40., 0.5},
  {{skinThickMm, 1.2, "Skin thickness (mm)"},     0.5,  3.0, 0.1},
  {{rhoSkin,    850., "Skin density (kg/m³)"},   600., 1200., 50.},
  {{tensionNm,  200., "Applied tension (N/m)"},   20., 600., 5.},
  {{targetHz,   293.7,"Target frequency (Hz)"},   60., 600., 1.},
  SaveDefinitions -> True
];

ashikoExplorer
