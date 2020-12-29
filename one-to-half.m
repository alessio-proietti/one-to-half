(* Alessio Proietti <alessio.proietti [at] protonmail [dot] com> 2020*)

NewRules [ {p_, a_} -> {b_, d_, q_}] := {
  {Subscript[p, "+"], a} -> {b, d, Subsuperscript[q, "+", d]},
  {Subsuperscript[q, "+", d], 0} -> {0, d, Subscript[q, "+"]},
  {Subsuperscript[q, "+", d], 1} -> {1, d, Subscript[q, "+"]},
  {Subscript[p, "-"], a} -> {b, d, Subsuperscript[q, "-", d]},
  {Subsuperscript[q, "-", d], 0} -> {0, d, Subscript[q, "-"]},
  {Subsuperscript[q, "-", d], 1} -> {1, d, Subscript[q, "-"]},
  {Subsuperscript[q, "+", -1], -1} -> {-1, +1,Subsuperscript[q, "-", +1]},
  {Subscript[q, "-"], -1} -> {-1, +1, Subscript[q, "+"]}
  }

OneToHalf[mu_] := Flatten[ NewRules[#] & /@ mu]