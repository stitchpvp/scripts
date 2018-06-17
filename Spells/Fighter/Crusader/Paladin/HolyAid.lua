function cast(Caster, Target, MinHeal, MaxHeal, Mitigation)
  SpellHeal(Target, "Heal", MinHeal, MaxHeal)
  AddSpellBonus(Target, 204, Mitigation)
end