function cast(Caster, Target, MinDmg, MaxDmg)
  AddControlEffect(Target, 4)
  Knockback(Caster, Target, -15, 10)
  SpellDamage(Target, 1, MinDmg, MaxDmg)
end