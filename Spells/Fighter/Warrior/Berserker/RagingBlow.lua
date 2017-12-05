function cast(Caster, Target, MinDmg, MaxDmg, Threat)
  SpellDamage(Target, 2, MinDmg, MaxDmg)
  AddHate(Caster, Target, Threat)
end
