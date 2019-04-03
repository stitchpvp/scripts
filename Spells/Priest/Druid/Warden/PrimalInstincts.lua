function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, TickMin, TickMax)
  SpellDamage(Target, 2, TickMin, TickMax)
end
