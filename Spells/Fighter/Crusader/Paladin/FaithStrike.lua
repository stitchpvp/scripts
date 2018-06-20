function cast(Caster, Target, MinDmg, MaxDmg, MinHeal, MaxHeal)
  SpellDamage(Target, 7, MinDmg, MaxDmg)
  SpellHeal(Caster, "Heal", MinHeal, MaxHeal)
end