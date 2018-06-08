function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  SpellDamage(Target, 6, MinTick, MaxTick)
end