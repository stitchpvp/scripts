function cast(Caster, Target)
  SpellDamage(Target, 2, 405, 675)
  AddControlEffect(Target, 4)
  Knockback(Caster, Target, -15, 12.5)
end