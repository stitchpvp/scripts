function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 7, MinDmg, MaxDmg)

  if GetRaceBaseType(Target) == 233 then
    SpellDamage(Target, 7, MinDmg, MaxDmg)
  end
end