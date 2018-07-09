function cast(Caster, Target, CureLevel, MinHeal, MaxHeal)
  CureByType(Target, CureLevel, 3)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
end