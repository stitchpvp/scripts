function cast(Caster, Target, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Righteous Silencing", 7, MinDmg, MaxDmg)
  AddControlEffect(Target, 2)
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 2)
end