function cast(Caster, Target, MinEnd, MaxEnd, TickDmg)
  SpellDamage(Target, 6, TickDmg)
end

function tick(Caster, Target, MinEnd, MaxEnd, TickDmg)
  SpellDamage(Target, 6, TickDmg)
end

function remove(Caster, Target, MinEnd, MaxEnd)
  ProcDamage(Caster, Target, "Migraine", 6, MinEnd, MaxEnd)
end
