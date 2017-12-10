function cast(Caster, Target, MinHealPct, MaxHealPct, Health, Mitigation)
  local min_heal = GetMaxHP(Caster) * (MinHealPct / 100.0)
  local max_heal = GetMaxHP(Caster) * (MaxHealPct / 100.0)

  SpellHeal(Target, "Heal", min_heal, max_heal)
  AddSpellBonus(Target, 500, Health)
  AddSpellBonus(Target, 204, Mitigation)
end