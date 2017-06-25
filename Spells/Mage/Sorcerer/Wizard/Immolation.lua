function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 3, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  SpellDamage(Target, 3, MinTick, MaxTick)
end