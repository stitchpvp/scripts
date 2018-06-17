function cast(Caster, Target, MinHeal, MaxHeal, Health)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  AddSpellBonus(Target, 500, Health)
end