function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 4, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  SpellDamage(Target, 4, MinTick, MaxTick)
end
