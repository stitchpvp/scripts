function cast(Caster, Target, Damage, PowerAmount)
  SpellDamage(Target, 5, Damage)
  SpellHeal(Caster, "Power", PowerAmount)
end