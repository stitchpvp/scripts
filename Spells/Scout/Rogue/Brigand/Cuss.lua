function cast(Caster, Target, Dispel, HateAmt)
  SetTarget(Target, Caster)
  Interrupt(Caster, Target)
  CureByType(Target, Dispel, 2)
  AddHate(Caster, Target, HateAmt)
end