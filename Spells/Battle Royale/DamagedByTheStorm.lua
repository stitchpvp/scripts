function cast(Caster, Target, Percentage, StormDmg1, StormDmg2, StormDmg3)
  local storm_1 = StormDmg1 * Percentage
  SpellDamage(Target, 4, pct, pct)
end

function tick(Caster, Target, Percentage, StormDmg1, StormDmg2, StormDmg3)
  local storm_1 = StormDmg1 * Percentage
  SpellDamage(Target, 4, pct, pct)
end
