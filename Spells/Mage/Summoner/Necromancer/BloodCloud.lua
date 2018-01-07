function cast(Caster, Target, HealAmount, DamageAmount)
  SpellHeal(Caster, "Heal", HealAmount)
  SpellDamage(Target, 8, DamageAmount)
end