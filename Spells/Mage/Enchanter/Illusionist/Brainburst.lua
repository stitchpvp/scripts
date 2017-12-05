function cast(Caster, Target, MinEnd, MaxEnd, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinEnd, MaxEnd, MinDmg, MaxDmg)
  SpellDamage(Target, 6, MinDmg, MaxDmg)
end

function remove(Caster, Target, MinEnd, MaxEnd)
  ProcDamage(Caster, Target, "Migraine", 6, MinEnd, MaxEnd)
end
