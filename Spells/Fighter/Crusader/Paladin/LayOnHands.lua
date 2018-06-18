function cast(Caster, Target, MinHeal, MaxHeal, Health, Mitigation)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  AddSpellBonus(Target, 500, Health)
  AddSpellBonus(Target, 204, Mitigation)
end