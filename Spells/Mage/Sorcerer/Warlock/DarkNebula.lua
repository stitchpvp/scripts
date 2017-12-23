function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 4)
  SpellDamage(Target, 9, MinDmg, MaxDmg)
end