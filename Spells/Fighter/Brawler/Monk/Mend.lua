function cast(Caster, Target, CureLevel, MinHeal, MaxHeal)
  CureByType(Caster, CureLevel, 3)
  SpellHeal(Caster, "Heal", MinHeal, MaxHeal)
end