function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
end

function tick(Caster, Target, MinDmg, MaxDmg, DoTDmg)
  ProcDamage(Caster, Target, "Impale", 2, DoTDmg)
end