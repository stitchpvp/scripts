function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 4)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
end