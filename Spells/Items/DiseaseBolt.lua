function cast(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  ProcDamage(Caster, Target, "Disease Bolt", 8, MinDmg, MaxDmg, 0, "You hit %t with Disease Bolt")
end

function tick(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  SpellDamage(Target, 8, MinTick, MaxTick)
end
