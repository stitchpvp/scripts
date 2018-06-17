function cast(Caster, Target, Dispel, HateAmt)
  SetTarget(Target, Caster)
  Interrupt(Caster, Target)
  CureByType(Dispel, 2, "Cure")
  AddHate(Caster, Target, HateAmt)
end