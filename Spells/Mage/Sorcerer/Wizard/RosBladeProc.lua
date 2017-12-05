function cast(Caster, Target, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Flametongue", 3, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Flametongue", 3, MinDmg, MaxDmg)
end
