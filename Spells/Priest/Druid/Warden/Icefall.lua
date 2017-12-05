function cast(Caster, Target, MinDmg, MaxDmg)
  SpellDamage(Target, 4, MinDmg, MaxDmg)

  if GetRaceType(Target) == 150 then
    SpellDamage(Target, 4, MinDmg, MaxDmg)
  end
end
