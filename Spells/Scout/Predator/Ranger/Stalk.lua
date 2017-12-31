function cast(Caster, Target, MinDehate, MaxDehate)
  AddHate(Caster, Target, math.random(MinDehate, MaxDehate), 1)
  Stealth(1, Caster)
end