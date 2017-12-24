function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 4)
  SpellDamage(Target, 4, MinDmg, MaxDmg)
end