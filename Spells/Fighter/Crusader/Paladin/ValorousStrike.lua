function cast(Caster, Target, MinDmg, MaxDmg, MinUndeadDmg, MaxUndeadDmg)

  ProcDamage(Caster, Target, "Valorous Strike", 7, MinDmg, MaxDmg)

  if GetRaceBaseType(Target) == 233 then
    ProcDamage(Caster, Target, "Valorous Strike", 7, MinUndeadDmg, MaxUndeadDmg)
  end
end