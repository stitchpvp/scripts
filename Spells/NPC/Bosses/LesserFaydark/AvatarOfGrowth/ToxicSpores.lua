function cast(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  ProcDamage(Caster, Target, "Toxic Spores", 9, MinDmg, MaxDmg)
  AddControlEffect(Target, 2)
  AddControlEffect(Target, 5)
end

function tick(Caster, Target, MinDmg, MaxDmg, MinTick, MaxTick)
  ProcDamage(Caster, Target, "Toxic Spores", 9, MinTick, MaxTick)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 2)
  RemoveControlEffect(Target, 5)
end
