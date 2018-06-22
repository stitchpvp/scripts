function cast(Caster, Target, HealAmount, MinDmg, MaxDmg)
  SpellHeal(Caster, "Heal", HealAmount)
  SpellDamage(Target, 8, MinDmg, MaxDmg)
end