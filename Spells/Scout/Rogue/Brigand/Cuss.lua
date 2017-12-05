function cast(Caster, Target, HateAmt)
  SetTarget(Target, Caster)
  Interrupt(Caster, Target)
  AddHate(Caster, Target, HateAmt)
end
