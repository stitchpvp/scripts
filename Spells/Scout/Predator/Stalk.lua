function cast(Caster, Target, MinDehate, MaxDehate)
  local DehateAmt = -1 * (math.random(-1 * MinDehate, -1 * MaxDehate))

  AddHate(Caster, Target, DehateAmt, 1)
  Stealth(1, Caster)
end