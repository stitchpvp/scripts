function cast(Caster, Target, MinDmg, MaxDmg, MinUndeadDmg, MaxUndeadDmg)
  AddControlEffect(Target, 4)

  ProcDamage(Caster, Target, "Glorious Strike", 7, MinDmg, MaxDmg)

  if GetRaceBaseType(Target) == 233 then
    ProcDamage(Caster, Target, "Glorious Strike", 7, MinUndeadDmg, MaxUndeadDmg)
  end
end

function remove(Caster, Target)
  RemoveControlEffect(Target, 4)
end