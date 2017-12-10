function cast(Caster, Target, MinDmg, MaxDmg)
  ProcDamage(Caster, Target, "Divine Strike", 7, MinDmg, MaxDmg)

  if GetRaceBaseType(Target) == 233 then
    ProcDamage(Caster, Target, "Divine Strike", 7, MinDmg, MaxDmg)
  end
end