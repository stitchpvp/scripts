function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 9, MinDmg, MaxDmg)
  Interrupt(Caster, Target)
end

function tick(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  SpellDamage(Target, 9, MinTick, MaxTick)
end